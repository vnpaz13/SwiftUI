//
//  TabGestureBasic.swift
//  SwiftUI_Basic
//
//  Created by VnPaz on 5/5/24.
//

import SwiftUI

struct TabGestureBasic: View {
    
    @State var isSelected: Bool = false
    
    var body: some View {
        VStack (spacing: 40) {
            RoundedRectangle(cornerRadius: 25.0)
                .frame(height: 200)
                .foregroundColor(isSelected ? Color.green : Color.red)
            
            Button {
                isSelected.toggle()
            } label: {
                Text("1. Normal Button")
                    .font(.headline)
                    .foregroundColor(.white)
                    .frame(height: 55)
                    .frame(maxWidth: .infinity)
                    .background(Color.blue)
                    .cornerRadius(25.0)
            }
            
            Text("2. onTabGesture Click Once")
                .font(.headline)
                .foregroundColor(.white)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(Color.blue)
                .cornerRadius(25.0)
                .onTapGesture {
                    isSelected.toggle()
                }
             
            Text("3. onTabGesture Click Twice")
                .font(.headline)
                .foregroundColor(.white)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(Color.blue)
                .cornerRadius(25.0)
                .onTapGesture(count:2){
                    isSelected.toggle()
                }
            
            Spacer()
        }
        .padding(40)
    }
}

#Preview {
    TabGestureBasic()
}
