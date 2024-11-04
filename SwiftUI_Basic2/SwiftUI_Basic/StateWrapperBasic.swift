//
//  StateWrapperBasic.swift
//  SwiftUI_Basic
//
//  Created by VnPaz on 5/2/24.
//
// @ - Property Wrapper : 프로퍼티가 저장되는 방식을 관리하는 코드를 추가 시키는 것 (재사용 가능)
// @State : 변수가 변경될 때, View에서도 update 되면서 값이 변경되기 원할 때 사용

import SwiftUI

struct StateWrapperBasic: View {
    // property
    @State var backgroundColor: Color = Color.green
    @State var myTitle: String = "아직 버튼 안눌림"
    @State var count: Int = 0
    
    var body: some View {
        // self 사용 가능, @State 쓸 때는 굳이 사용 안해도 됨. 다만 좀 더 직관적으로 볼 수 있음.
        ZStack {
            // background
            backgroundColor
                .ignoresSafeArea()
            
            // content
            VStack (spacing: 20) {
                Text(myTitle)
                    .font(.title)
                Text("카운트: \(count)")
                
                HStack (spacing: 20) {
                    Button {
                        // action
                        backgroundColor = .red
                        myTitle = "1번 버튼 눌림"
                        count += 1
                    } label: {
                        Text("1번 버튼")
                    }
        
                    Button {
                        // action
                        backgroundColor = .purple
                        myTitle = "2번 버튼 눌림"
                        count -= 1
                    } label: {
                        Text("2번 버튼")
                    }
                }
            }
            .foregroundColor(.white)
        }
    }
}

#Preview {
    StateWrapperBasic()
}
