//
//  ScrollView(Paging,ScrollTransition).swift
//  ios17_Basic
//
//  Created by VnPaz on 5/13/24.
//

import SwiftUI

struct ScrollView_Paging_ScrollTransition_: View {
    var body: some View {
        ScrollView(.horizontal) {
            LazyHStack (spacing: 30) {
                ForEach(1...3, id: \.self) { index in
                    Image("mobile\(String(index))")
                        .padding(.horizontal)
                    // horizontal 방향으로 사진 가운데로 설정
                        .containerRelativeFrame(.horizontal)
                }
            }
            // 오직 main View 에서만 ScrollView가 되고 안에 있는 subview는 ScrollView가 안되게끔 설정
            .scrollTargetLayout()
        }
        // 위에 Target으로 설정 된 LayOut에서 ScrollView가 되게끔 설정하기
        .scrollTargetBehavior(.viewAligned)
    }
}

struct ScrollTransition: View {
 
    var body: some View {
        ScrollView(.vertical) {
            LazyVStack (spacing: 20) {
                ForEach(1...30, id: \.self) { _ in
                    RoundedRectangle(cornerRadius: 20)
                        .fill(.blue.gradient)
                        .frame(height: 200)
                        .scrollTransition(
                            topLeading: .interactive,
                            bottomTrailing: .animated) { view, phase in
                                view
                                    .opacity(1 - (phase.value < 0 ? -phase.value : phase.value))
                            }
                }
            }
            .padding(.horizontal)
        }
    }
}

#Preview {
    ScrollView_Paging_ScrollTransition_()
}

#Preview {
   ScrollTransition()
}
