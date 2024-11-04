//
//  ContentView.swift
//  Stacks
//
//  Created by VnPaz on 3/17/24.
//
// VStack (수직), HStack (수평), ZStack (중첩)

import SwiftUI

struct ContentView: View {
    var body: some View {
//        VStack{
//            Rectangle()
//                .fill(Color.indigo)
//                .frame(width: 80, height: 100)
//            Rectangle()
//                .fill(Color.yellow)
//                .frame(width: 120, height: 150)
//            Rectangle()
//                .fill(Color.cyan)
//                .frame(width: 160, height: 180)
//        } // 우클릭 후 fold 누르기
//        HStack {
//            Rectangle()
//                .fill(Color.indigo)
//                .frame(width: 80, height: 100)
//            Rectangle()
//                .fill(Color.yellow)
//                .frame(width: 120, height: 150)
//            Rectangle()
//                .fill(Color.cyan)
//                .frame(width: 160, height: 180)
//        }
//        ZStack {
//            Rectangle()
//                .fill(Color.indigo)
//                .frame(width: 160, height: 180)
//            Rectangle()
//                .fill(Color.yellow)
//                .frame(width: 120, height: 150)
//            Rectangle()
//                .fill(Color.cyan)
//                .frame(width: 80, height: 80)
//        }
        VStack {
            HStack {
                Image("flowers")
                    .resizable()
                    .frame(width: 40, height: 40)
                    .clipShape(Circle())
                Text("Vinny Pazienza")
                    .fontWeight(.semibold)
                    .foregroundStyle(Color.primary)
                Spacer() 
                Image(systemName: "ellipsis")
                    .foregroundColor(Color.white)
            }
            Image("pretty")
                .resizable()
                .frame(maxHeight: 400)
        }
    }
}

#Preview {
    ContentView()
}
