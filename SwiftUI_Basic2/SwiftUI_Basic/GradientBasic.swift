//
//  GradientBasic.swift
//  SwiftUI_Basic
//
//  Created by VnPaz on 4/30/24.
//

import SwiftUI

struct GradientBasic: View {
    var body: some View {
        VStack {
            
            // Linear Gradient 선형 그라디언트
            Text("Linear Gradient")
                .font(.title2)
            RoundedRectangle(cornerRadius: 25)
                .fill(
                    LinearGradient(
                        gradient: Gradient(colors: [Color.red, Color.blue]),
                        startPoint: .topLeading,
                        endPoint: .bottom)
                )
                .frame(width: 300, height: 200)
            
            // Radial Gradient
            Text("Radial Gradient")
                .font(.title2)
            RoundedRectangle(cornerRadius: 25)
                .fill(
                    RadialGradient(
                        gradient: Gradient(colors: [Color.yellow, Color.purple]),
                        center: .leading,
                        startRadius: 5,
                        endRadius: 300
                    )
                )
                .frame(width: 300, height: 200)
            
            // Angular Gradient
            Text("Angular Gradient")
                .font(.title2)
            RoundedRectangle(cornerRadius: 25)
                .fill(
                    AngularGradient(
                        gradient: Gradient(colors: [Color.blue,Color.green]),
                        center: .topLeading,
                        angle: .degrees(100)
                    )
                )
                .frame(width: 300, height: 200)
        }
    }
}

#Preview {
    GradientBasic()
}
