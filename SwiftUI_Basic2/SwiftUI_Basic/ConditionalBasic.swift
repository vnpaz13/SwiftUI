//
//  ConditionalBasic.swift
//  SwiftUI_Basic
//
//  Created by VnPaz on 5/2/24.
//

import SwiftUI

struct ConditionalBasic: View {
    // property
    @State var showCircle: Bool = false
    @State var showRectangle: Bool = false
    @State var isLoading: Bool = false
    
    var body: some View {
        VStack (spacing: 20) {
            Button {
                isLoading.toggle()
            } label: {
                Text("로드중 . . . : \(isLoading.description)")
            }
            
            // 로딩 이미지
            if isLoading {
                ProgressView()
            }
            
            // 원형 버튼 생성하기
            Button {
                showCircle.toggle()
            } label: {
                Text("원형 버튼: \(showCircle.description)")
            }
            
            // 사각형 버튼
            Button {
                showRectangle.toggle()
            } label: {
                Text("사각형 버튼: \(showRectangle.description)")
            }
            
            // 조건 1. 원형 버튼이 true 일 때
            if showCircle {
                Circle()
                    .frame(width: 100, height: 100)
            }
            
            // 조건 2. 사각형 버튼 true 일 때
            if showRectangle {
                Rectangle()
                    .frame(width: 100, height: 100)
            }
            
            // 조건 3. 원형 버튼이 false 그리고 사각형 버튼이 false 일 때
            // if !showCircle && !ShowRectangle {}
            if showCircle == false && showRectangle == false {
                RoundedRectangle(cornerRadius: 25.0)
                    .frame(width: 200, height: 100)
            }
            
            // 조건 4. 원형 버튼 true 또는 사각형 버튼 true 일 때
            if showCircle || showRectangle {
                RoundedRectangle(cornerRadius: 25.0)
                    .fill(Color.red)
                    .frame(width: 200, height: 100)
            }
            
            Spacer()
            
        }
    }
}

#Preview {
    ConditionalBasic()
}
