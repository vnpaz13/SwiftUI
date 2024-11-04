//
//  SymbolVariant_Basic.swift
//  ios15_Basic
//
//  Created by VnPaz on 5/8/24.
//

import SwiftUI

struct SymbolVariant_Basic: View {
    var body: some View {
        VStack (spacing: 20) {
            Text("Symbol Variant")
                .font(.largeTitle.bold())
                .foregroundStyle(.blue)
            
            List {
                Label("None", systemImage: "heart")
                Label("None", systemImage: "heart").symbolVariant(.none)
                Label("Fill", systemImage: "heart").symbolVariant(.fill)
                Label("Fill", systemImage: "heart").symbolVariant(.circle)
                Label("Fill", systemImage: "heart").symbolVariant(.circle.fill)
                Label("Fill", systemImage: "heart").symbolVariant(.rectangle)
                Label("Fill", systemImage: "heart").symbolVariant(.rectangle.fill)
                Label("Fill", systemImage: "heart").symbolVariant(.square)
                
                Label("Fill", systemImage: "heart").symbolVariant(.square.fill)
                Label("Fill", systemImage: "heart").symbolVariant(.slash)
                Label("Fill", systemImage: "heart").symbolVariant(.slash.fill)
            }
        }
    }
}

#Preview {
    SymbolVariant_Basic()
}
