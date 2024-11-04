//
//  BindingBasic.swift
//  SwiftUI_Basic
//
//  Created by VnPaz on 5/2/24.
//
// @Binding - @State를 Subview (하위 뷰)에서 사용하기 위한 Wrapper

import SwiftUI

struct BindingBasic: View {
    // property
    @State var backgroundColor: Color = Color.green
    @State var title: String = "Binding Basic View"
    
    var body: some View {
        ZStack {
            // background
            backgroundColor
                .ignoresSafeArea()
            
            // content
            VStack {
                Text(title)
                
                // button
                // parameter로 @State의 값에 $ 를 붙여준다
                BindingChild(backgroundColor: $backgroundColor, title: $title)
            }
        }
    }
}

#Preview {
    BindingBasic()
}
