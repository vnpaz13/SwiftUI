//
//  ContentView.swift
//  ScrollView
//
//  Created by VnPaz on 3/30/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
            Text("최신 영화")
                .font(.system(size: 30, weight: .semibold))
                .frame(maxWidth: . infinity, alignment: .leading )
                .padding(.leading, 15)

        ScrollView(.horizontal) {
            HStack {
                ForEach(0..<10, id: \.self) {
                    index in RoundedRectangle(cornerRadius: 25.0)
                        .fill(Color.yellow)
                        .frame(width: 300, height: 200)
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
