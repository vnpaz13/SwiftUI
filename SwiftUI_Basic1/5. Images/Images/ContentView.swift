//
//  ContentView.swift
//  Images
//
//  Created by VnPaz on 3/15/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Image("flowers")
            .resizable()
            .scaledToFill()
//            .scaledToFit()
            .frame(width: 300, height: 300)
            .cornerRadius(300/2) // 정사각형을 원으로 수치적
//            .cornerRadius(20)
//            .clipped()
//            .clipShape(RoundedRectangle(cornerRadius: 20))
//            .clipShape(Circle())
//            .clipShape(Ellipse())
              
    }
}

#Preview {
    ContentView()
}
