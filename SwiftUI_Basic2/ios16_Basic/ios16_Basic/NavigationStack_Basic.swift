//
//  NavigationStack_Basic.swift
//  ios16_Basic
//
//  Created by VnPaz on 5/9/24.
//

import SwiftUI

struct NavigationStack_Basic: View {
    
    @State var stack = NavigationPath()
    
    var body: some View {
        NavigationStack(path: $stack) {
            NavigationLink("2번째 페이지 이동", value: 40)
                .navigationDestination(for: Int.self) { value in
                    VStack {
                        NavigationLink("3번째 페이지 이동", value: 100)
                        
                        Text("나의 나이는 \(value)입니다")
                        Button{
//                            stack.removeLast() // 이전화면으로 이동
                            stack = .init() // 초기화면으로 이동
                        } label: {
//                            Text("이전 페이지로 이동하기")
                            Text("초기화면으로 이동하기")
                        }
                    }
                }
        }
    }
}

#Preview {
    NavigationStack_Basic()
}
