//
//  LabeledContent_Basic.swift
//  ios16_Basic
//
//  Created by VnPaz on 5/11/24.
//

import SwiftUI

struct LabeledContent_Basic: View {
    
    @State var isAlert: Bool = false
    @State var isMute: Bool = false
    
    var body: some View {
        VStack (spacing: 10) {
            Text("LabeledContent")
                .font(.largeTitle.bold())
                .foregroundStyle(.blue)
            
            LabeledContent("제목", value: "값")
            
            LabeledContent("제목") {
                Label("사진기", systemImage: "camera")
            }
            
            LabeledContent("퍼센트", value: 50, format: .percent)
            LabeledContent("금액", value: 400000, format: .currency(code: "KRW"))
            
            LabeledContent {
                Text("값 Custom")
                    .font(.title.bold())
                    .foregroundStyle(.red)
            } label: {
                Text("제목")
                    .fontWeight(.bold)
            }
            
            List {
                LabeledContent("퍼센트", value: 50, format: .percent)
                
                LabeledContent("금액", value: 400, format: .currency(code: "KRW"))
                
                LabeledContent("설정") {
                    GroupBox {
                        Toggle("알림끄기", isOn : $isAlert)
                        Toggle("음소거", isOn : $isMute)
                    }
                    .padding(.horizontal)
                }
            }
            
            Spacer()
        }
        .font(.title2)
        .padding()
    }
}

#Preview {
    LabeledContent_Basic()
}
