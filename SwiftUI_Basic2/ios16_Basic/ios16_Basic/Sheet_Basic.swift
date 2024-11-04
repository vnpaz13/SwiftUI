//
//  Sheet_Basic.swift
//  ios16_Basic
//
//  Created by VnPaz on 5/9/24.
//

import SwiftUI

struct Sheet_Basic: View {
    @State var showSheet: Bool = false
    
    var body: some View {
        Button {
            showSheet.toggle()
        } label: {
            Text("Sheet 보이기")
                .font(.title)
        }
        .sheet(isPresented: $showSheet) {
            Text("Custom Size Sheet 입니다")
            // Customize Size
                .presentationDetents([.small, .medium, .large])
                .presentationDragIndicator(.hidden)
            // Default 값 = .visible
            
        }
    }
}

extension PresentationDetent {
    static let small = Self.height(100)
}

#Preview {
    Sheet_Basic()
}
