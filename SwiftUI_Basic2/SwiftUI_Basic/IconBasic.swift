//
//  IconBasic.swift
//  SwiftUI_Basic
//
//  Created by VnPaz on 4/30/24.
//

import SwiftUI

struct IconBasic: View {
    var body: some View {
        VStack (spacing: 20){
            Image(systemName: "person.fill.badge.plus")
                .resizable() // 크기 조정
                .renderingMode(.original) // 아이콘 색상 변경
                // 실제 컬러에서 멀티 컬러로 변경된다.
                // 고유 값 컬러로 변경되어서 컬러를 변경하더라도 변경되지 않는 컬러 값이 된다.
                .scaledToFill()
                .foregroundColor(.red)
                .frame(width: 300, height: 300)
        }
    }
}

#Preview {
    IconBasic()
}



