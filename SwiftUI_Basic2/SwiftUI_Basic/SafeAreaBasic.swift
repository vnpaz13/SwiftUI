//
//  SafeAreaBasic.swift
//  SwiftUI_Basic
//
//  Created by VnPaz on 5/1/24.
//

import SwiftUI

struct SafeAreaBasic: View {
    var body: some View {
        ZStack {
            // background
            Color.blue
//                .ignoresSafeArea()
//                 default = (.all)
                .ignoresSafeArea(edges: .top)
            
            // content
            VStack {
                Text("Hello, World!")
                    .font(.largeTitle)
            }
                
        }
    }
}

struct SafeAreaBasic2: View {
    var body: some View {
        ScrollView {
            VStack {
                Text("박스형 리스트")
                    .font(.largeTitle)
                    .frame(maxWidth: .infinity)
                
                ForEach(1..<11) { index in
                    RoundedRectangle(cornerRadius: 25.0)
                        .fill(Color.white)
                        .frame(height: 150)
                        .shadow(radius: 10)
                        .padding()
                        .overlay(
                            Text("\(index)번 리스트")
                        )
                }
            }
        }
        .background(
            Color.blue
                .ignoresSafeArea()
        )
    }
}

#Preview {
    SafeAreaBasic()
}

#Preview {
    SafeAreaBasic2()
}
