//
//  ContentView.swift
//  Spacer
//
//  Created by VnPaz on 3/20/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            HStack {
                Spacer()
                    .frame(height:10)
                    .background(Color.red)
                Text("VnPaz")
                Spacer()
                    .frame(height:10)
                    .background(Color.red)
                Image(systemName: "heart.fill")
                    .foregroundStyle(Color.blue)
                Spacer()
                    .frame(height: 10)
                    .background(Color.red)
                Circle()
                    .frame(width: 30, height: 30)
                Spacer()
                    .frame(height: 10)
                    .background(Color.red)
            }
            .background(Color.yellow)
            Spacer()
                .frame(width: 20)
                .background(Color.red)
            Rectangle()
                .frame(width: .infinity, height: 100)
        }
    }
}

#Preview {
    ContentView()
}
