//
//  ToggleBasic.swift
//  SwiftUI_Basic
//
//  Created by VnPaz on 5/4/24.
//

import SwiftUI

struct ToggleBasic: View {
   
    @State var toggleIsOn: Bool = false
   
    var body: some View {
        VStack {
            HStack {
                Text("로그인 상태: ")
                Text(toggleIsOn ? "온라인" : "오프라인")
            }
            Toggle(
                isOn: $toggleIsOn){
                    Text("로그인 상태 선택")
                }
                .toggleStyle(SwitchToggleStyle(tint: Color.red))
            Spacer()
            
        }
        .padding(.horizontal, 100)
        
    }
}

#Preview {
    ToggleBasic()
}
