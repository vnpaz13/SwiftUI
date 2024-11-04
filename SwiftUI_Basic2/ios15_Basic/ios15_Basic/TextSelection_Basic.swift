//
//  TextSelection_Basic.swift
//  ios15_Basic
//
//  Created by VnPaz on 5/8/24.
//

import SwiftUI

struct TextSelection_Basic: View {
    var body: some View {
        Text("길게 누르면 복사 및 공유가 됩니다")
            .font(.title2)
            .textSelection(.enabled)
    }
}

#Preview {
    TextSelection_Basic()
}
