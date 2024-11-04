//
//  ContentView.swift
//  NavigationStack2
//
//  Created by VnPaz on 4/2/24.
//


import SwiftUI

struct ContentView: View {
    var profileImages: [Profile] = [
        .init(imageName: "pretty", categoryTitle: "Puppy", iconImage: "pawprint.fill"),
        .init(imageName: "street", categoryTitle: "Social", iconImage: "person.2.fill"),
        .init(imageName: "flowers", categoryTitle: "Dogs", iconImage: "dog.fill")
    ]
    var body : some View {
        NavigationStack {
            List {
                Section("Category") {
                    ForEach(profileImages, id : \.self) {
                        image in
                        NavigationLink(value: image) {
                            HStack {
                                Image(systemName: "\(image.iconImage)"  )
                                Text("\(image.categoryTitle)")
                            }
                        }
                        .navigationDestination(for: Profile.self) {
                            image in Image("\(image.imageName)")
                                .resizable()
                                .ignoresSafeArea()
                        }
                    }
                }
                NavigationLink(value: 0) {  // value 값을 0으로 주면 비활성화 처리 됨
                    Text("Hello")
                }
            }
        }
    }
}

struct Profile: Hashable {
    let imageName: String
    let categoryTitle: String
    let iconImage: String
}
#Preview {
    ContentView()
}
