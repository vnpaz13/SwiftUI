//
//  ContentView.swift
//  ForEach
//
//  Created by VnPaz on 3/26/24.
//

import SwiftUI

struct ContentView: View {
    
    let backColors = [Color.red, Color.yellow, Color.pink, Color.blue, Color.purple]
    
    var body: some View {
        
        ForEach([12,15,30,60,100], id: \.self)
            {index in Text("Hellow, World! \(index)")
        }
        
        ForEach(backColors, id: \.self) { color in 
            Ellipse()
                .fill(color)
                .frame(width: 100, height: 120)
        }
    }
}

#Preview {
    ContentView()
}
