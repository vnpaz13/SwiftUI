//
//  SheetBasic.swift
//  SwiftUI_Basic
//
//  Created by VnPaz on 5/4/24.
//
// .sheet : 현재 View에서 약 90% 부분 정도 overlay 되는 View
// .fullScreenCover : 현재 View에서 전체 부분 overlay 되는 View


import SwiftUI

struct SheetBasic: View {
    // property
    @State var showSheet: Bool = false
    
    var body: some View {
        ZStack {
            // Background
            Color.green.ignoresSafeArea()
            
            // Content
            Button {
                showSheet.toggle()
            } label : {
                Text("Button")
                    .foregroundColor(.green)
                    .font(.headline)
                    .padding()
                    .background(Color.white)
                    .cornerRadius(10)
            }
            .sheet(isPresented: $showSheet) {
                SheetBasic2()
            }
//            .fullScreenCover(isPresented: $showSheet) {
//                SheetBasic2()
//            }
        }
    }
}

#Preview {
    SheetBasic()
}
