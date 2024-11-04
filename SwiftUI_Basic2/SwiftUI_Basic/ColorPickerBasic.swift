//
//  ColorPickerBasic.swift
//  SwiftUI_Basic
//
//  Created by VnPaz on 5/4/24.
//

import SwiftUI

struct ColorPickerBasic: View {
    
    @State var backgroundColor: Color = .black
    
    var body: some View {
        ZStack {
            backgroundColor.ignoresSafeArea()
            
            ColorPicker(selection: $backgroundColor, supportsOpacity: true) {
                Text("원하는 색을 고르세요")
                
            }
            .padding()
            .background(Color.black)
            .cornerRadius(10)
            .foregroundColor(.white)
            .font(.headline)
            .padding(50)
        }
    }
}

#Preview {
    ColorPickerBasic()
}
