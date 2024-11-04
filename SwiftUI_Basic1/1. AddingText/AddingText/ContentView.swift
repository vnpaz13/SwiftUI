//
//  ContentView.swift
//  AddingText
//
//  Created by VnPaz on 3/13/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Hello, World!")
//            .font(.title)
//            .fontWeight(.bold)
            .underline(true, color: Color.yellow)
            .strikethrough(true, color: Color.pink)
            .baselineOffset(10)
            .kerning(0.1)
            .font(.system(size: 40, weight: .bold))
    }
}

#Preview {
    ContentView()
}
