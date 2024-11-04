//
//  ContentView.swift
//  Conditional-if
//
//  Created by VnPaz on 4/2/24.
//

import SwiftUI

struct ContentView: View {
   @State var userLogin = true
   @State var username = "Ryan"
    @State var following = false
    var body: some View {
//       if username == "Ryan" {
//           Color.yellow
//       } else {
//           Color.pink
//       }
        
        if following {
            Text("Following")
                .fontWeight(.semibold)
                .foregroundStyle(Color.white)
                .frame(width: 100, height: 50)
                .background(Color.blue)
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .shadow(radius:10)
        } else {
            Text("Follow")
                .fontWeight(.semibold)
                .foregroundStyle(Color.black)
                .frame(width: 100, height: 50)
                .border(Color.black)
                .shadow(radius:10)
        }
    }
}

#Preview {
    ContentView()
}
