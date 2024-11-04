//
//  FruitBasicView.swift
//  SwiftUI_Basic
//
//  Created by VnPaz on 5/5/24.
//

import SwiftUI

struct FruitBasicView: View {
    
    // 주로 Subview에서 사용 (부모 View 값을 넘겨 받았음)
    //    @ObservedObject var fruitViewModel = FruitViewModel()
    
    
    
    // View가 처음 생성, 초기화 할때, 부모View에서 주로 사용
    @StateObject var fruitViewModel = FruitViewModel()
    
    var body: some View {
        NavigationView {
            List {
                if fruitViewModel.isLoading {
                    ProgressView()
                } else {
                    ForEach(fruitViewModel.fruitArray) { fruit in
                        HStack {
                            Text("\(fruit.count)")
                                .foregroundColor(.red)
                            Text(fruit.name)
                                .font(.headline)
                                .bold()
                        }
                    }
                }
            }
//            .onAppear {
//                fruitViewModel.getFruit()
//            }
            .navigationBarItems(
                trailing:
                    NavigationLink(
                        destination: SecondScreen(fruitViewModel: fruitViewModel),
                        label: {
                            Image(systemName: "arrow.right")
                                .font(.title)
                        }))
            .navigationTitle("Fruit List")
        }
    }
}


// SecondScreen

struct SecondScreen: View {
    
    @ObservedObject var fruitViewModel = FruitViewModel()
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ZStack {
            Color.green.ignoresSafeArea()
            
            VStack (spacing : 20) {
                ForEach(fruitViewModel.fruitArray) { fruit in
                    Text(fruit.name)
                        .font(.headline)
                        .foregroundColor(.white)
                }
                
                Button {
                    presentationMode.wrappedValue.dismiss()
                } label: {
                    Text("Go Back")
                        .font(.largeTitle)
                        .foregroundColor(.white)
                        .fontWeight(.bold)
                }
            }
        }
    }
}





#Preview {
    FruitBasicView()
}

#Preview {
    SecondScreen()
}
