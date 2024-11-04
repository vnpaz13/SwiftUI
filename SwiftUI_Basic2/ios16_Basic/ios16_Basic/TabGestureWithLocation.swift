//
//  TabGestureWithLocation.swift
//  ios16_Basic
//
//  Created by VnPaz on 5/11/24.
//

import SwiftUI

struct TabGestureWithLocation: View {
    
    @State var point: CGPoint = .init(x:0.0, y:0.0)
    
    @State var x: Double = 0.0
    @State var y: Double = 0.0
    
    var body: some View {
        
        VStack (spacing: 20) {
            HStack {
                Text("x좌표 : ")
                Text("\(x)")
            }
            HStack {
                Text("y좌표 : ")
                Text("\(y)")
            }
            
            Rectangle()
                .fill(.green)
                .frame(width: 300, height: 300)
                .padding()
                .onTapGesture { location in
                    point = location
                    convertToDouble(point: point)
                }
            
            Rectangle()
                .fill(.cyan)
                .frame(width: 300, height: 300)
                .padding()
                .onTapGesture (coordinateSpace: .global) { location in
                    point = location
                    convertToDouble(point: point)
                }
            
        }
    }
    
    func convertToDouble(point: CGPoint) {
        x = Double(point.x)
        y = Double(point.y)
    }
    
}

#Preview {
    TabGestureWithLocation()
}
