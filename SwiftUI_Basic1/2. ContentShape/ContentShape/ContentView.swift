//
//  ContentView.swift
//  ContentShape
//
//  Created by VnPaz on 3/13/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Circle()
//              .fill(Color.yellow)
//                .stroke(Color.pink,lineWidth: 10)
//                .strokeBorder(Color.pink,style: StrokeStyle(lineWidth: 10, lineCap: .butt, dash: [10,20]))
//                .frame(width: 200, height: 200)
                .trim(from: 0.3, to: 1.0)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
