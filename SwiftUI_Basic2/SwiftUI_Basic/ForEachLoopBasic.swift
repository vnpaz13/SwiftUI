//
//  ForEachLoopBasic.swift
//  SwiftUI_Basic
//
//  Created by VnPaz on 5/1/24.
//

import SwiftUI

struct ForEachLoopBasic: View {
    // 변수 생성
    var data: [String] = ["Hi", "Hello", "Hey everyone"]
    
    var body: some View {
        
        // 1번
        
        VStack {
            ForEach(0..<10) { index in
                HStack {
                    Circle()
                        .frame(width: 20, height: 20)
                    
                    Text("인덱스 번호 : \(index)번")
                    
                }
            }
                
            Divider()
            
            // 2번
            ForEach(data, id: \.self) { item in
                Text(item)
            }
            
            
        }
        
    }
}

#Preview {
    ForEachLoopBasic()
}
