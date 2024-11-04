//
//  ColorBasic.swift
//  SwiftUI_Basic
//
//  Created by VnPaz on 4/30/24.
//

import SwiftUI

struct ColorBasic: View {
    var body: some View {
        VStack(spacing: 20) {
            
            // Basic Color
            Text("Basic Color")
                .font(.title)
            RoundedRectangle(cornerRadius: 25)
                .fill(Color.purple)
                .frame(width: 300, height: 100, alignment: .center)
            
            // Primary Color
            // 자동으로 다크,라이트 모드 색상 지원
            // secondary도 있음. 좀 더 약함
            Text("Primary Color")
                .font(.title)
            RoundedRectangle(cornerRadius: 25)
                .fill(Color.primary)
                .frame(width:300, height: 100)
            
            // UIColor
            // UIKit에서 사용되는 color 값을 사용할 수 있다.
            Text("UI Color")
                .font(.title)
            RoundedRectangle(cornerRadius: 25)
                .fill(Color(UIColor.secondarySystemBackground))
                .frame(width: 300, height: 100)
        
            // Custom Color
            Text("Custom Color")
                .font(.title)
            RoundedRectangle(cornerRadius: 25)
                .fill(Color("CustomColor"))
                .frame(width: 300,height: 100, alignment: .center)
        }
    }
}

#Preview {
    ColorBasic()
//        .preferredColorScheme(.dark)
}
