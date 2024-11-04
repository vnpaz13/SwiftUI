//
//  ContentView.swift
//  Gradient
//
//  Created by VnPaz on 3/14/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
//        Rectangle()
//            .fill(LinearGradient(colors: [.yellow, .pink, .green, .red], startPoint: .topLeading, endPoint: .bottomTrailing))
//            .frame(width: 200, height: 200)
//            .cornerRadius(20)
        AngularGradient(colors: [.yellow, .red], center: .center, angle: .degrees(90))
        // AnuglarGradient 는 사용하기에 약간 까다로움...
    }
}

#Preview {
   ContentView()
}
