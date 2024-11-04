//
//  DarkModeBasic.swift
//  SwiftUI_Basic
//
//  Created by VnPaz on 5/5/24.
//

import SwiftUI

struct DarkModeBasic: View {
    
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack (spacing: 20) {
                    // primary and secondary
                    Text("Primary 색상")
                        .foregroundColor(.primary)
                    Text("Secondary 색상")
                        .foregroundColor(.secondary)
                    // 일반적인 black, white는 고정값
                    Text("Black Color")
                        .foregroundColor(.black)
                    Text("White Color")
                        .foregroundColor(.white)
                    Text("Red Color")
                        .foregroundColor(.red)
                    // Asset에서 adaptive라는 이름의 color set을 만든 후 light, dark mode에 맞는 색을 설정 가능하다.
                    Text("Asset에서 Adapative 색상 설정")
                        .foregroundColor(Color("AdaptiveColor"))
                    // @Environment 사용해서 colorScheme 사용하기
                    Text("@Environment 사용해서 Adaptive 색 설정")
                        .foregroundColor(colorScheme == .light ? .green : .blue)
                }
            }
        }
        
    }
}

#Preview {
    DarkModeBasic()
}
