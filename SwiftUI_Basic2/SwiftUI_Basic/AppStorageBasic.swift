//
//  AppStorageBasic.swift
//  SwiftUI_Basic
//
//  Created by VnPaz on 5/5/24.
//

import SwiftUI

struct AppStorageBasic: View {
    
    @State var generalName: String?
    
    // App storage를 사용하면 앱을 다시 열 때 자동으로 키에서 이름을 가져옵니다.
    @AppStorage("name") var appStorageName : String?
    
    var body: some View {
        VStack (spacing: 20) {
            // 일반적인 State
            VStack (spacing: 10) {
                Text("Type --- @State")
                    .font(.headline)
                
                Text(generalName ?? "What is your name?")
                
                Button {
                    generalName = "Vinny"
                } label: {
                    Text("Answer")
                }
            }
            .padding()
            .border(.green)
            
            // @AppStorage 사용
            VStack (spacing: 10) {
                Text("Type --- @AppStorage")
                    .font(.headline)
                
                Text(appStorageName ?? "What is Your name?")
               
                Button {
                    appStorageName = "Vinny"
                } label: {
                    Text("Answer")
                }
            }
            .padding()
            .border(.red)
        }
    }
}

#Preview {
    AppStorageBasic()
}
