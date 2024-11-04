//
//  MarkDown,Selection_Basic.swift
//  ios15_Basic
//
//  Created by VnPaz on 5/8/24.
//

import SwiftUI

struct MarkDown_Selection_Basic: View {
    var body: some View {
        VStack (spacing: 10) {
            Text("1. MarkDown")
                .font(.largeTitle)
                .foregroundStyle(.blue)
            
            Text("*Italic*")
            Text("_Italic_")
            Text("**Bold**")
            Text("***Bold & Italic***")
            Text("___Hello___")
            Text("[URL](http://naver.com)")
            Text("`print(Hello World)`")
        
            Spacer()
        }
        .padding()
        .font(.title)
    }
}

struct TextSelection: View {
    var body: some View {
        VStack (spacing: 20) {
            Text("2. Text Selection")
                .font(.largeTitle.bold())
                .foregroundStyle(.blue)
            
            Text("Text 선택 안됨 (기본 설정)")
            
            Text("Text 선택 됨 (복사, 공유 됨)")
                .textSelection(.enabled)
            
            Spacer()
        }
        .font(.title)
    }
}

#Preview {
    MarkDown_Selection_Basic()
}

#Preview {
    TextSelection()
}
