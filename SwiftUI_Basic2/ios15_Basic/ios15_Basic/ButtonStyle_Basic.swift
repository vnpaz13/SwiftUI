//
//  ButtonStyle_Basic.swift
//  ios15_Basic
//
//  Created by VnPaz on 5/8/24.
//

import SwiftUI

struct ButtonStyle_Basic: View {
    var body: some View {
        ScrollView {
            VStack {
                Text("1. Normal Button Style")
                
                Button {
                    // action
                } label: {
                    Text("Plain ButtonStyle")
                }
                .frame(height: 50)
                .frame(maxWidth: .infinity)
                .buttonStyle(.plain)
                
                Button {
                    // action
                } label: {
                    Text("Bordered ButtonStyle")
                }
                .frame(height: 50)
                .frame(maxWidth: .infinity)
                .buttonStyle(.bordered)
                
                Button {
                    // action
                } label: {
                    Text("BorderedProminent ButtonStyle")
                }
                .frame(height: 50)
                .frame(maxWidth: .infinity)
                .buttonStyle(.borderedProminent)
                
                Button {
                    // action
                } label: {
                    Text("BorderLess ButtonStyle")
                }
                .frame(height: 50)
                .frame(maxWidth: .infinity)
                .buttonStyle(.borderless)
            }
            .padding()
            
            Divider()
            
            VStack (spacing: 20) {
                Text("2. Constrolsize로 버튼 크기 자동 설정")
                    .font(.headline)
                
                Button {
                    // action
                } label: {
                    Text("Large ConstrolSize")
                }
                .frame(height: 50)
                .frame(maxWidth: .infinity)
                .buttonStyle(.borderedProminent)
                .controlSize(.large)
                
                Button {
                    // action
                } label: {
                    Text("Regular ConstrolSize")
                }
                .frame(height: 50)
                .frame(maxWidth: .infinity)
                .buttonStyle(.borderedProminent)
                .controlSize(.regular)
                
                Button {
                    // action
                } label: {
                    Text("Small ConstrolSize")
                }
                .frame(height: 50)
                .frame(maxWidth: .infinity)
                .buttonStyle(.borderedProminent)
                .controlSize(.small)
                
                Button {
                    // action
                } label: {
                    Text("mini ConstrolSize")
                }
                .frame(height: 50)
                .frame(maxWidth: .infinity)
                .buttonStyle(.borderedProminent)
                .controlSize(.mini)
            }
        }
    }
}

#Preview {
    ButtonStyle_Basic()
}
