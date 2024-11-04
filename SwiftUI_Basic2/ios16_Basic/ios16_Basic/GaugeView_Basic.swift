//
//  GaugeView_Basic.swift
//  ios16_Basic
//
//  Created by VnPaz on 5/11/24.
//

import SwiftUI

struct GaugeView_Basic: View {
    
    let gradient = Gradient(colors: [.green, .yellow, .orange, .red])
    
    var body: some View {
        Gauge(value: 0.4, label : {
//            Text("40퍼센트 나타내기")
        }, currentValueLabel: {
            Text("40%")
                .font(.caption)
        })
        .gaugeStyle(.accessoryLinear)
        .tint(gradient)
        .padding()
    }
}

#Preview {
    GaugeView_Basic()
}
