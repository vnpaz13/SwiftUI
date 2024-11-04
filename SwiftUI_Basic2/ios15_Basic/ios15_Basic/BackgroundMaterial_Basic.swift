//
//  BackgroundMaterial_Basic.swift
//  ios15_Basic
//
//  Created by VnPaz on 5/8/24.
//

import SwiftUI

struct BackgroundMaterial_Basic: View {
    
    // property
    let url = URL(string: "https://picsum.photos/1000")
    
    
    var body: some View {
        
        VStack {
            Spacer()
            
            VStack {
                RoundedRectangle(cornerRadius: 4)
                    .frame(width: 50, height: 4)
                    .padding()
                
                Spacer()
                Text("Material Background 예시")
                    .font(.headline)
                
                Spacer()
            }
            .frame(height: 350)
            .frame(maxWidth: .infinity)
            .background(.ultraThinMaterial)
        }
        .background(
            AsyncImage(url: url) { Image in
                Image
            } placeholder: {
                ProgressView()
            }
        )
    }
}

#Preview {
    BackgroundMaterial_Basic()
}
