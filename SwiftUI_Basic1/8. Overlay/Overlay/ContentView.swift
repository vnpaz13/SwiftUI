//
//  ContentView.swift
//  Overlay
//
//  Created by VnPaz on 3/17/24.
//
// overlay (alignment: content:)
// background (alignment: content: )

import SwiftUI

struct ContentView: View {
    var body: some View {
        Rectangle()
            .fill(Color.indigo)
            .frame(width: 200, height: 100)
            .cornerRadius(20)
            .overlay(alignment: .center) {
                Image(systemName: "heart.fill" )
                    .foregroundColor(Color.yellow)
                    .font(.title)
            }
            .overlay(alignment: .topLeading) {
                Image(systemName: "star.fill" )
                    .foregroundColor(Color.blue)
                    .font(.title)
            }
            .overlay(alignment: .trailing) {
                Image(systemName: "moon.stars.fill" )
                    .foregroundColor(Color.red)
                    .font(.title)
            }
            .overlay(alignment: .bottomLeading) {
                Image(systemName: "sun.max.fill" )
                    .foregroundColor(Color.yellow)
                    .font(.title)
            }
            .background(
                Circle()
                    .fill(Color.cyan)
                    .frame(width: 250, height: 250, alignment: . center)
            )
     }
}
#Preview {
    ContentView()
}
