//
//  ContentView.swift
//  Modifier&Operator
//
//  Created by VnPaz on 4/2/24.
//

import SwiftUI

struct ContentView: View {
    @State var showProfile = false
    
    var body: some View {
        Button(action: {
            showProfile.toggle()
        }, label: {
            Text("Show Profile")
        })
        Image(showProfile ? "street" : "pretty")
            .resizable()
            .frame(height:400)
            .clipShape(RoundedRectangle(cornerRadius: showProfile ? 10 : 10))
        
//        if showProfile {
//            Image("street")
//                .resizable()
//                .frame(height: 400)
//        } else {
//            Image("pretty")
//                .resizable()
//                .frame(height: 400)
//        }
    }
}

#Preview {
    ContentView()
}
