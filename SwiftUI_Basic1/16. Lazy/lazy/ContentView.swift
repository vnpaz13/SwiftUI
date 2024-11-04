//
//  ContentView.swift
//  lazy
//
//  Created by VnPaz on 3/30/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView {
            LazyVStack(alignment: .center, spacing: /*@START_MENU_TOKEN@*/nil/*@END_MENU_TOKEN@*/, pinnedViews: .sectionHeaders, content: { Section {
                ForEach(1...1000, id: \.self) { count in
                    RoundedRectangle(cornerRadius:25.0)
                        .fill(Color.purple)
                        .frame(width: 300, height: 200)
                }
            } header: {
                Text("Header view")
                    .font(.largeTitle)
                    .fontWeight(.bold)
            }

            })
            
//            LazyVStack {        // 지연처리를 통해 메모리 절약
//                ForEach(0 ... 1000, id: \.self)
//                {
//                    index in
//                    RoundedRectangle (cornerRadius: 25.0)
//                        .fill(Color.yellow)
//                        .frame(width: 300, height: 200)
//                }
//            }
        }
    }
}

#Preview {
    ContentView()
}
