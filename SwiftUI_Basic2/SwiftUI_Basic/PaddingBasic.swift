//
//  PaddingBasic.swift
//  SwiftUI_Basic
//
//  Created by VnPaz on 4/30/24.
//

import SwiftUI

struct PaddingBasic: View {
    var body: some View {
        VStack (alignment: .leading, spacing : 20){
            // 1. padding 기본
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .background(Color.yellow)
                .padding() // .padding(.all, 15)와 같다
                .padding(.leading, 20) // 총 35
                .background(Color.blue)
                .padding(.bottom, 15) // 추가로 생김
            
            Divider()
            
            // 2. padding 응용
            Text("Hello, World!")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.bottom, 20)
            
            Text("Type Something!Type Something!Type Something!Type Something!Type Something!Type Something!Type Something!Type Something!Type Something!")
        }
        // VStack 범위 밖에서 padding 설정
        .padding()
        .padding(.vertical, 30)
        .background(
            Color.white
                .cornerRadius(10)
                .shadow(
                    color: Color.black.opacity(0.3),
                    radius: 10,
                    x: 10, y: 10)
        )
        .padding()
    }
}

#Preview {
    PaddingBasic()
}
