//
//  Badge_Basic.swift
//  ios15_Basic
//
//  Created by VnPaz on 5/8/24.
//

import SwiftUI

struct Badge_Basic: View {
    var body: some View {
        
        TabView {
            // 1번
            Color.red.ignoresSafeArea(edges:.top)
                .tabItem {
                    Image(systemName: "heart.fill")
                    Text("LOVE")
                }
                .badge(0)
            
            // 2번
            Color.green.ignoresSafeArea(edges:.top)
                .tabItem {
                    Image(systemName: "heart.fill")
                    Text("LOVE")
                }
                .badge(5)
            // 3번
            Color.blue.ignoresSafeArea(edges:.top)
                .tabItem {
                    Image(systemName: "heart.fill")
                    Text("LOVE")
                }
                .badge("new")
        }
        
        Divider()
        
        List {
            Text("Hello")
                .badge("English!")
            Text("Bon jour")
                .badge("French!")
            Text("Ciao")
                .badge("Italiano!")
        }
    }
}

#Preview {
    Badge_Basic()
}
