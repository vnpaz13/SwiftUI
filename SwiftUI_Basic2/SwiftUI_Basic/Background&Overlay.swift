//
//  Background&Overlay.swift
//  SwiftUI_Basic
//
//  Created by VnPaz on 4/30/24.
//

import SwiftUI

struct Background_Overlay: View {
    var body: some View {
        VStack(spacing: 20) {
            // 1.Background
            Text("Hello, World!")
                .frame(width: 100, height: 100)
                .background(
                    Circle()
                        .fill(
                            LinearGradient(
                                gradient: Gradient(colors: [Color.red, Color.blue]), startPoint: .leading, endPoint: .trailing)
                        )
                )
                .frame(width:120, height: 120)
                .background(
                    Circle()
                        .fill(Color.red)
                )
            
            Divider()
            
            // 2.Overlay
                Circle()
                .fill(Color.pink)
                .frame(width:100, height: 100)
                .overlay( // Text가 앞쪽에 나타나는 것
                        Text("1")
                            .font(.title)
                            .foregroundColor(Color.white)
                )
                .background( // pink Circle 뒤에 나타나는 것
                    Circle()
                        .fill(Color.purple)
                        .frame(width:120, height: 120)
                )
            Divider()
            
            // 3.Background and overlay
            Rectangle()
                .frame(width: 200, height: 200)
                .overlay(
                    Rectangle()
                        .fill(Color.blue)
                        .frame(width: 100, height: 100), alignment: .leading
                )
                .background(
                    Rectangle()
                        .fill(Color.red)
                        .frame(width: 250, height: 250)
                )
                .padding()
            
            Divider()
            
            Image(systemName: "heart.fill")
                .font(.system(size: 40))
                .foregroundColor(Color.white)
                .background(
                    Circle()
                        .fill(
                            LinearGradient(
                                gradient: Gradient(colors: [Color.cyan, Color.blue]),
                                startPoint: .topLeading,
                                endPoint: .bottomTrailing)
                            )
                        .frame(width: 100, height: 100)
                        .shadow(color: Color.blue, radius: 10, x: 0, y: 10)
                        .overlay(
                            Circle()
                                .fill(Color.red)
                                .frame(width: 35, height: 35)
                                .overlay(
                                    Text("2")
                                        .font(.headline)
                                        .foregroundColor(Color.white)
                                )
                                .shadow(color: Color.red, radius: 10, x:5, y:5), alignment: .bottomTrailing
                        )
                )
                .padding()
        

        }
    }
}

#Preview {
    Background_Overlay()
}
