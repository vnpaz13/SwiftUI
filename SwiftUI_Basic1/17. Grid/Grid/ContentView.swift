//
//  ContentView.swift
//  Grid
//
//  Created by VnPaz on 4/1/24.
//

import SwiftUI

struct ContentView: View {
    
    let columns = [
//        GridItem(.fixed(100)),
//        GridItem(.fixed(75)),
//        GridItem(.fixed(50))
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
//        GridItem(.adaptive(minimum: 50, maximum: 200)),
//        GridItem(.adaptive(minimum: 50, maximum: 200)),
        // adaptive는 제어를 할 수가 없음.
    ]
    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: /*@START_MENU_TOKEN@*/nil/*@END_MENU_TOKEN@*/, content: {
                ForEach(0 ..< 100, id: \.self) {
                    index in Rectangle()
                        .frame(height: 50)
                        .background(Color.yellow)
                }
            })
        }
    }
}

#Preview {
    ContentView()
}
