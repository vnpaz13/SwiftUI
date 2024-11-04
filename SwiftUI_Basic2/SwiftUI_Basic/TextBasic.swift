//
//  TextBasic.swift
//  SwiftUI_Basic
//
//  Created by VnPaz on 4/29/24.
//

import SwiftUI

struct TextBasic: View {
    var body: some View {
        VStack(spacing:20) {
            // Font 사이즈를 title, body, footnote 등 정하면 responsive 하게 변함.
            Text("Hello world!")
                .font(.title)
//                .fontWeight(.semibold)
                .bold() //. fontWeight(.bold)
                .underline(color: Color.red)
                .italic()
                .strikethrough(true, color: Color.green)
                
            // systemSize =  text 크기를 지정할 수 있음. 단점이 사이즈가 고정이라 responsive가 안됨.
            Text("Hello World2".uppercased()) // 일괄적인 대문자 처리
                .font(.system(size: 25, weight: .semibold, design:. monospaced))
            
            // multiline text alignment
            Text("Multi Line Alignment!Multi Line Alignment!Multi Line Alignment!Multi Line Alignment!Multi Line Alignment!Multi Line Alignment!Multi Line Alignment!Multi Line Alignment!Multi Line Alignment!Multi Line Alignment!Multi Line Alignment!Multi Line Alignment!Multi Line Alignment!")
                .multilineTextAlignment(.trailing) // leading, center, trailing
                .foregroundColor(.red)
                .strikethrough(color: Color.black)
        }
    }
}

#Preview {
    TextBasic()
}
