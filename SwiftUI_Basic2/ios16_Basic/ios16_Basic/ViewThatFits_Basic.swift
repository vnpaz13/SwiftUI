//
//  ViewThatFits_Basic.swift
//  ios16_Basic
//
//  Created by VnPaz on 5/11/24.
//

import SwiftUI

struct ViewThatFits_Basic: View {
    var body: some View {
        VStack (spacing: 20) {
            Text("1. ViewThatFit Horizontal")
                .font(.title.bold())
                .foregroundStyle(.blue)
            
            // View의 사이즈를 측정해서 in .horizontal 방향으로 측정하기
            // 아이폰 스크린 사이즈에 맞춰서 측정함, Width 값이 700이므로 그것보다 작은 경우에는 그다음 프레임을 자동으로 선택함
            ViewThatFits(in: .horizontal) {
                RoundedRectangle(cornerRadius: 15)
                    .fill(.pink.opacity(0.7))
                    .overlay {
                        Text("가로모드 LandScape")
                    }
                    .frame(width: 700, height: 75)
                
            
                RoundedRectangle(cornerRadius: 15)
                    .fill(Color.orange.opacity(0.7))
                    .overlay {
                        Text("세로모드 Portrait")
                    }
                    .frame(width: 350, height : 75)
                                
            }
        }
        .font(.title)
        .padding()
    }
}

struct ViewThatFitVertical: View {
    var body: some View {
        VStack (spacing: 20) {
            Text("1. ViewThatFit Horizontal")
                .font(.title.bold())
                .foregroundStyle(.blue)
            
            
            ViewThatFits(in: .vertical) {
                RoundedRectangle(cornerRadius: 15)
                    .fill(.purple.opacity(0.7))
                    .overlay {
                        Text("가로모드 LandScape")
                    }
                    .frame(width: 200, height: 500)
                
            
                RoundedRectangle(cornerRadius: 15)
                    .fill(Color.cyan.opacity(0.7))
                    .overlay {
                        Text("세로모드 Portrait")
                    }
                    .frame(width: 400, height : 100)
                                
            }
        }
        .font(.title)
        .padding()
    }
}


struct ViewThatFitPractice: View {
    
    @State var count: Int = 1
    
    var body: some View {
        VStack (spacing: 20) {
            Text("연습")
                .font(.largeTitle.bold())
                .foregroundStyle(.blue)
            
            ViewThatFits(in: .vertical) {
                VStack(spacing: 10) {
                    ForEach(1...count, id:\.self) { index in
                        RoundedRectangle(cornerRadius: 15)
                            .fill(.red)
                            .frame(height: 200)
                        
                    }
                }
                
                // ViewThatFit 안에 스크린 밖으로 넘어가면 ScrollView가 각 적용되게 함.
                ScrollView {
                    VStack(spacing: 10) {
                        ForEach(1...count, id:\.self) { index in
                            RoundedRectangle(cornerRadius: 15)
                                .fill(.red)
                                .frame(height: 200)
                            
                        }
                    }
                }
            }
            .onTapGesture {
                count += 1
            }
            
            Spacer()
        }
        .font(.title)
        .padding()
    }
}

#Preview ("Horizontal") {
    ViewThatFits_Basic()
}

#Preview ("Vertical") {
    ViewThatFitVertical()
}

#Preview ("Practice") {
    ViewThatFitPractice()
}
