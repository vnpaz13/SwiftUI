//
//  ContentView.swift
//  Padding
//
//  Created by VnPaz on 3/20/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
//        Text("Hello, World!")
//            .padding(.horizontal, 20)
//            .padding([.top, .leading], 20)
//            .padding(EdgeInsets(top: 10, leading: 20, bottom: 40, trailing : 0))
        VStack(alignment: .leading) {
            Text("Hello World!")
                .font(.title)
                .fontWeight(.semibold)
            Text("You guys wanna be a iOS developer? This tutorial is the answer")
//                .multilineTextAlignment(.leading)
        }
        .padding()
        .padding(.vertical, 20)
    }
}

#Preview {
    ContentView()
}
