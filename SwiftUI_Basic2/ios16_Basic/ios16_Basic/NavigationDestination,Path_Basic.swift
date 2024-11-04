//
//  NavigationDestination,Path_Basic.swift
//  ios16_Basic
//
//  Created by VnPaz on 5/11/24.
//

import SwiftUI

// MARK: - Navigation Destination

struct NavigationDestination_Path_Basic: View {
    var body: some View {
        NavigationStack {
            
            // Navigation Link에서 value 값을 넘겨주고 navigationDestination으로 값을 넘겨 줄 수 있음
            // (Navigation Link의 value typed을 파악해서 넘김
            VStack (spacing: 20) {
                NavigationLink(value: "String Test") {
                    Text("Navigation 1")
                }
                
                NavigationLink(value: true) {
                    Text("Navigation 2")
                }
            }
            .navigationDestination(for: String.self, destination: { stringValue in
                Text("값은 : \(stringValue)").bold()
            })
            .navigationDestination(for: Bool.self, destination: { boolValue in
            Text("값은 : \(boolValue.description)").bold()
                        .navigationTitle("Navigation Destination")
            })
        }
        .font(.title)
    }
}

// MARK: - Navigation with sheet

struct NavigationLinkisPresented: View {
    
    @State private var showSheet = false
    @State private var navigate = false
    
    var body: some View {
        NavigationStack {
            VStack {
                Button("Show Sheet") {
                    showSheet.toggle()
                }
            }
            .navigationTitle("Navigation with Sheet")
            .sheet(isPresented: $showSheet, content: {
                VStack (spacing: 20) {
                    // 1. Sheet 안에서는 Navigation Link 버튼이 disable 되서 사용할 수 없음
                    NavigationLink {
                        Text("Destination from Link")
                    } label: {
                        Text("NavigationLink")
                    }
                    
                    // 2. 그래서 해결법이 .isPresented 를 사용해서 navigate를 true로 해서 .navigationDestination에서 넘기게 할 수 있음
                    Button("Button Link") {
                        showSheet = false
                        navigate = true
                    }
                }
            })
            .navigationDestination(isPresented: $navigate) {
                Text("Destination from Button")
            }
        }
        .font(.title)
    }
}

// MARK: - Path

// Model
struct ProductForNav: Hashable {
    var name: String
    var price: Double
}

struct DateForNav: Hashable {
    var name: String
    var date: Date
}
struct NavigationLinkPath: View {
    // NavigationPath()는 여러개의 collection의 데이터 타입을 가질 수 있는데, 다른 타입의 product와 shop을 navigationStack에서 navigationDestination으로 넘기게 하려면 NavigationPath를 사용해서 넘겨야함
    
    @State private var product = ProductForNav(name: "iPhone 15 Pro", price: 150.99)
    @State private var date = DateForNav(name: "구매한 날짜", date: .now)
    @State private var navPath = NavigationPath()
    
    var body: some View {
        NavigationStack(path: $navPath) {
            VStack (spacing: 20) {
                List {
                    NavigationLink(value: product) {
                        Text(product.name)
                    }
                    
                    NavigationLink(value: date) {
                        Text(date.name)
                    }
                }
            }
            .navigationTitle("Order")
            .navigationDestination(for: ProductForNav.self) { product in
                List{
                    Text(product.name)
                    Text(product.price, format: .currency(code: "USD"))
                        .foregroundStyle(.secondary)
                }
                .navigationTitle("Price Detail")
            }
            .navigationDestination(for: DateForNav.self) { when in
                List{
                    Text(when.name)
                    Text(when.date.formatted(date: .long, time: .omitted))
                        .foregroundStyle(.secondary)
                }
                .navigationTitle("Date Detail")

            }
        }
        .font(.title)
    }
}

// MARK: - To Root View
struct NavigationLinkToRoot: View {
    
    @State private var navPath: [String] = []
    
    var body: some View {
        NavigationStack(path: $navPath) {
            VStack (spacing: 20) {
                NavigationLink(value: "View 2") {
                    Text("2번 뷰로 가기")
                }
                NavigationLink(value: "View 3") {
                    Text("3번 뷰로 가기")
                }
            }
            .navigationTitle("To Root")
            .navigationDestination(for: String.self) { pathValue in
                if pathValue == "View 2" {
                    NavLinkView2(navPath: $navPath)
                } else {
                    NavLinkView3(navPath: $navPath)
                }
            }
        }
    }
}

struct NavLinkView2: View {
    @Binding var navPath: [String]
    
    var body: some View {
        VStack (spacing: 20) {
            // navPath에 View 3으로 value 값 넘기기
            NavigationLink(value: "View 3") {
                Text("3번 뷰로 가기")
            }
            
            Text("NavPath")
            Text(navPath, format: .list(type: .and, width: .narrow))
        }
    }
}

struct NavLinkView3: View {
    @Binding var navPath: [String]
    
    var body: some View {
        VStack (spacing: 20) {
            Button("Root View로 가기") {
                // 전부 지우고 root view로 돌아감
                navPath.removeAll()
            }
            Text("NavPath: ")
            Text(navPath, format: .list(type: .and, width: .narrow))
        }
    }
}


#Preview {
    NavigationDestination_Path_Basic()
}

#Preview ("Navigation with Sheet"){
    NavigationLinkisPresented()
}

#Preview ("Navigation Path"){
    NavigationLinkPath()
}

#Preview ("Navigation to Root") {
    NavigationLinkToRoot()
}
