 //
//  ContentView.swift
//  ignoresSafeArea
//
//  Created by VnPaz on 3/30/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
//        Color.orange
//            .ignoresSafeArea()
        VStack {
            Image("street")
                .resizable()
                .ignoresSafeArea()
                .frame(maxWidth: .infinity,
                       maxHeight: 400)
            
            Text("VnPaz")
                .font(.system(size: 30, weight: .semibold))
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading, 15)
        }
        Spacer()
    }
}

#Preview {
    ContentView()
}
