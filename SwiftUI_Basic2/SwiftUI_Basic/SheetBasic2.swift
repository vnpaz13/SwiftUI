//
//  SheetBasic2.swift
//  SwiftUI_Basic
//
//  Created by VnPaz on 5/4/24.
//

import SwiftUI

struct SheetBasic2: View {
    
    // property
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ZStack(alignment: .topLeading) {

            // background
            Color.red.ignoresSafeArea()
            
            // contents
            Button {
                // Sheet 닫기
                presentationMode.wrappedValue.dismiss()
            } label: {
                Image(systemName: "xmark")
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .padding()
            }
        }
    }
}

#Preview {
    SheetBasic2()
}
