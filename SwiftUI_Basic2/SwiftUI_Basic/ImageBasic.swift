//
//  ImageBasic.swift
//  SwiftUI_Basic
//
//  Created by VnPaz on 4/30/24.
//

import SwiftUI

struct ImageBasic: View {
    var body: some View {
        VStack (spacing: 20) {
            Image("nature")
                .resizable()
                .scaledToFill()
                .frame(width: 300, height: 300)
                .cornerRadius(25) // 150 원형 사이즈
            
            Divider() // 구분선 표시
            
            Image("nature")
                .resizable()
                .scaledToFill()
                .frame(width: 300, height: 300)
                .clipShape(Circle())
        }
    }
}

#Preview {
    ImageBasic()
}
