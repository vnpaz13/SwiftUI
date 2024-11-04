//
//  TransitionBasic.swift
//  SwiftUI_Basic
//
//  Created by VnPaz on 5/2/24.
//
// move : 단방향 이동 Transition
// opacity : 투명도 조절 Transition
// scale : 크기 조절 Transition
// asymmetric : 비대칭 방향 이동 Transition
//
//

import SwiftUI


struct TransitionBasic: View {
    
    
    // property
    @State var showTransition: Bool = false
    
    var body: some View {
        ZStack(alignment: .bottom) {
            VStack {
                Button {
                    withAnimation(.easeInOut) {
                        showTransition.toggle()
                        }
                    } label: {
                        Text("Button")
                    }
                    
                    Spacer()
                }
                
            if showTransition {
                RoundedRectangle(cornerRadius: 30)
                    .frame(height: UIScreen.main.bounds.height * 0.5)
                    .opacity(showTransition ? 1.0 : 0.0)
                // 1번 move transition
//                    .transition(.move(edge: .bottom))
                // 2번 opacity transition
//                    .transition(.opacity)
                // 3번 scale transition
//                    .transition(.scale)
                // 4번 asymmetric transition
                    .transition(.asymmetric(insertion: .move(edge: .leading), removal: .move(edge: .trailing)))
            }
        }
        .ignoresSafeArea(edges: .bottom)
    }
}

#Preview {
    TransitionBasic()
}
