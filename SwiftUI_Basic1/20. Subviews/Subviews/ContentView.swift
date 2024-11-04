//
//  ContentView.swift
//  Subviews
//
//  Created by VnPaz on 4/1/24.
//
// Subviews = 코드의 간결함과 재사용을 위한 방법 중 하나로 기존 view에서 추출한 부부을 Sub view로 생성하여 Parent view에서 subview를 호출

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView {
            Subview(username: "Ryan Kim", postImage: "pretty")
            Subview(username: "Shawn Kim", postImage: "street")
        }

    }
}


struct Subview: View {
    let username: String
    let postImage: String
    
    var body: some View {
        VStack {
            HStack {
                Image("flowers")
                    .resizable()
                    .frame(width: 40, height: 40)
                    .clipShape(Circle())
                Text("\(username)")
                Spacer()
                Image(systemName: "ellipsis")
            }
            .padding(.horizontal, 12)
            Image("\(postImage)")
                .resizable()
                .frame(height: 400)
            
        }
    }
}


#Preview {
    ContentView()
}
