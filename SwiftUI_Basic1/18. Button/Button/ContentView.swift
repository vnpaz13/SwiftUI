//
//  ContentView.swift
//  Button
//
//  Created by VnPaz on 4/1/24.
//

import SwiftUI

struct ContentView: View {
    // State = 상태 프로퍼티
    @State var backColor = Color.yellow
    var body: some View {
        VStack(spacing: 50) {
            RoundedRectangle(cornerRadius: 25.0)
                .fill(backColor)
                .frame(width: 200, height: 100)
            
            Button("Change") {
                //MARK : action
                backColor = Color.pink
            }
            
            Button(action: {
                backColor = Color.purple
            }, label: {
                Text("Color Changer")
                    .foregroundStyle(Color.white)
                    .fontWeight(.bold)
                    .frame(width: 350, height: 50)
                    .background(Color.pink)
                    .cornerRadius(20)
            })
            
            Button(action: {
                backColor = Color.cyan
                }, label: {
                    Image(systemName: "pencil.circle.fill")
                        .font(.system(size: 50))
                        .foregroundColor(Color.green)
                        .shadow(radius: 10)
            })
        }
    }
}

#Preview {
    ContentView()
}
