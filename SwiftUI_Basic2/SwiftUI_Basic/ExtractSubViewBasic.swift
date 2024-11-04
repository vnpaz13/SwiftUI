//
//  ExtractSubViewBasic.swift
//  SwiftUI_Basic
//
//  Created by VnPaz on 5/2/24.
//

import SwiftUI

struct ExtractSubViewBasic: View {
    var body: some View {
        ZStack {
            // background
            Color.cyan
                .ignoresSafeArea()
            
            // content
            contentLayer
        }
    }
    
    var contentLayer: some View {
        HStack {
            itemBasic(title: "사과", count: 1, color: .red)
            itemBasic(title: "오렌지", count: 10, color: .orange)
            itemBasic(title: "바나나", count: 34, color: .yellow)
        }
    }
    
}

#Preview {
    ExtractSubViewBasic()
}
