//
//  ContentView.swift
//  frame
//
//  Created by VnPaz on 3/15/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Hello, World!")
            .font(.largeTitle)
            .background(Color.blue)
//            .frame(width: 300, height:100, alignment: .center)
//            .background(Color.yellow)
//            .frame(minWidth: 0, idealWidth: 100, maxWidth: .infinity, minHeight: 0, idealHeight: 100, maxHeight: 200, alignment: .topLeading)
//            .background(Color.yellow)
            .frame(width: 100)
            .background(Color.yellow)
            .frame(maxWidth: 300)
            .background(Color.red)
            .frame(maxWidth: .infinity)
            .background(Color.black)
            .frame(height:150)
            .background(Color.pink)
            .frame(maxHeight:400)
            .background(Color.purple)
            .frame(maxHeight: .infinity)
            .background(Color.brown)
     
        
        
        
        
        
        //width: view.frame.width
    }
}

#Preview {
    ContentView()
}
