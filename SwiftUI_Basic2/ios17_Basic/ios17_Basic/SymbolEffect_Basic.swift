//
//  SymbolEffect.swift
//  ios17_Basic
//
//  Created by VnPaz on 5/13/24.
//

import SwiftUI

// SymbolEffectf를 통해 SF Symbol에 animation 효과를 넣을 수 있습니다.

struct SymbolEffect: View {
    
    @State private var startAnimation: Bool = false
    
    var body: some View {
        List {
            Label(
                title: { Text("색 변형 - variableColor")},
                icon: {
                    Image(systemName: "airplayaudio")
                        .foregroundStyle(.mint)
                        .symbolEffect(.variableColor)
                }
            )
            
            Label(
                title: { Text("경고 표시 알림 - Pulse")},
                icon: {
                    Image(systemName: "airplayaudio.badge.exclamationmark")
                        .foregroundStyle(.red, .mint) // 색을 다르게 표시해서 경고 표시 알림
                        .symbolEffect(.pulse)
                }
            )
            
            Label(
                title: { Text("Start Button 누르면 시작")},
                icon: {
                    Image(systemName: "lightbulb.max.fill")
                        .foregroundColor(.mint)
                        .symbolEffect(.bounce, options: .repeating.repeat(2), value: startAnimation)
                        
                }
            )
            
            Button("Start") {
                startAnimation.toggle()
            }
            .buttonStyle(.borderedProminent)
        }
        .font(.title)
        .listStyle(.plain)
        .listRowSpacing(60)
    }
}

#Preview {
    SymbolEffect()
}
