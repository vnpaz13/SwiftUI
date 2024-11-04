//
//  ExtractViewBasic.swift
//  SwiftUI_Basic
//
//  Created by VnPaz on 5/2/24.
//

import SwiftUI

struct ExtractViewBasic: View {
    // property
    @State var backgroundColor: Color = Color.pink
    
    var body: some View {
        ZStack {
            // background
            backgroundColor
                .ignoresSafeArea()
            
            // content
            contentLayer
//            VStack {
//                Text("Extract View 연습")
//                    .font(.largeTitle)
//                
//                Button {
//                    backgroundColor = .yellow
//                } label: {
//                    Text("바탕색 변경")
//                        .font(.headline)
//                        .foregroundColor(.white)
//                        .padding()
//                        .background(Color.black)
//                        .cornerRadius(10)
//                }
//            }
        }
    }
    
    // Content
    var contentLayer: some View {
        VStack {
            Text("Extract View 연습")
                .font(.largeTitle)
            
            Button {
                buttonPressed()
//                backgroundColor = .yellow
            } label: {
                Text("바탕색 변경")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.black)
                    .cornerRadius(10)
            }
        }
    }
    
    // Function
    func buttonPressed() {
        backgroundColor = .yellow
    }
}

#Preview {
    ExtractViewBasic()
}
