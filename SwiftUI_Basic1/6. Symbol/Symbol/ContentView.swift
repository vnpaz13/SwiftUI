//
//  ContentView.swift
//  Symbol
//
//  Created by VnPaz on 3/15/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
          Image(systemName: "externaldrive.fill.badge.plus")
//        Image(systemName: "house.fill")
            .renderingMode(.original)
            // original = bitmap 형식을 그대로 가져옴
            // template = foreground 색상 가져옴
            // option 눌러서 확인해 보기
            .resizable()
//            .aspectRatio(contentMode: .fit)
//            .font(.largeTitle)
//            .font(.system(size: 100))
//            .foregroundColor(.pink)
            .frame(width: 200, height: 200)
//            .cornerRadius(200)
//            .clipShape(Circle())
    }
}
#Preview {
    ContentView()
}
