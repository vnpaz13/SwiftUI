//
//  ContentView.swift
//  FirstChallenge
//
//  Created by VnPaz on 3/21/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        //.frame
//        Image(systemName: "star.fill")
//            .font(.system(size: 60))
//            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottomTrailing)
        //Stacks
//        VStack {
//            Spacer()
//            HStack {
//                Spacer()
//                Image(systemName: "star.fill")
//                    .font(.system(size: 60))
//            }
//        }
        //overlay
        Color.white
            .overlay(alignment: .bottomTrailing) {
                Image(systemName:  "star.fill")
                    .font(.system(size: 60))
            }
    }
}
#Preview {
    ContentView()
}
