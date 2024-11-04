//
//  ContentView.swift
//  init&enum
//
//  Created by VnPaz on 3/24/24.
//

import SwiftUI

struct ContentView: View {
    let backgroundColor: Color
    let country: String
    let title: String
    
//    init(backgroundColor: Color, country: String, title: String) {
//        self.backgroundColor = backgroundColor
//        self.country = country
//        self.title = title
//    }
    
    init(country: String, brand: Carbrand) {
        self.country = country
        
        if country == "Korea" {
            self.title = "Hyundai"
            self.backgroundColor = Color.yellow
        } else {
            self.title = "Tesla"
            self.backgroundColor = Color.pink
        }
    }
    
    // enum
    enum Carbrand {
        case Hyundai
        case Tesla
    }
    
    var body: some View {
        VStack {
            Text("\(country)")
                .font(.system(size:20 , weight: .semibold))
            Text("\(title)")
                .font(.system(size: 25, weight: .bold))
        }
        .foregroundStyle(Color.white)
        .frame(width:120, height: 120)
        .background(backgroundColor)
        .clipShape(Circle())
        
    }
}

#Preview {
    HStack {
        ContentView(country: "Korea", brand: .Hyundai)
        ContentView(country: "US", brand: .Tesla)
    }
}
