//
//  ScrollViewBasic.swift
//  SwiftUI_Basic
//
//  Created by VnPaz on 5/1/24.
//

import SwiftUI

struct ScrollViewBasic1: View {
    var body: some View {
        
        // 1번 - 세로 스크롤
        ScrollView(.vertical, showsIndicators: false) {
            VStack {
                ForEach(0..<50) { index in
                    Rectangle()
                        .fill(Color.blue)
                        .frame(height: 300)
                        .overlay(
                            Text("\(index) 번")
                                .font(.title)
                        )
                }
            }
        }
    }
}

struct ScrollViewBasic2: View {
    var body: some View {
        // 2번 - 가로 스크롤
        ScrollView(.horizontal, showsIndicators: true) {
            HStack {
                ForEach(0..<50) { index in
                    Rectangle()
                        .fill(Color.blue)
                        .frame(width: 300, height: 300)
                        .overlay(
                            Text("\(index) 번")
                                .font(.title)
                        )
                }
            }
        }
    }
}

struct ScrollViewBasic3: View {
    var body: some View {
        // 3번 - 혼합
        ScrollView(.vertical, showsIndicators: true) {
            LazyVStack {
                ForEach(0..<10) { _ in
                    ScrollView(.horizontal, showsIndicators: false) {
                        LazyHStack {
                            ForEach(0..<20) { _ in
                                RoundedRectangle(cornerRadius: 25.0)
                                    .fill(Color.white)
                                    .frame(width: 200, height: 150)
                                    .shadow(radius: 10)
                                    .padding()
                            }
                        }
                    }
                }
            }
        }
    }
}


// XCode 15 (iOS 17) 이후 PreView 변경 적용
#Preview("1.세로 스크롤") {
   ScrollViewBasic1()
}


#Preview("2.가로 스크롤") {
    ScrollViewBasic2()
}


#Preview("3.혼합") {
    ScrollViewBasic3()
}
