//
//  ContentUnavailableView_Basic.swift
//  ios17_Basic
//
//  Created by VnPaz on 5/13/24.
//

import SwiftUI

struct ContentUnavailableView_Basic: View {
    
    // Image와 Text를 합쳐서 전체 스크린에 나타냄 -> 말 그대로 Content가 unavailable 즉 사용할 수 없는 상태 UUI에 Error 표시 할 때 유용함
    var body: some View {
        ContentUnavailableView("BAD Connection", systemImage: "wifi.exclamationmark", description: Text("Wifi Disconnect"))
        
        Divider()
        
    ContentUnavailableView(label: {
        Label("정말로 삭제하시겠습니까?", systemImage: "questionmark.circle.fill")
    }, description: {
        Text("아래 삭제 버튼을 누르면 영구 삭제 됩니다")
    }, actions: {
        HStack (spacing: 30) {
            Button("Cancel", role: .cancel) {
                // Cancel Action
            }
            Button("Delete", role: .destructive) {
                // Delete Action
            }
            .buttonStyle(.borderedProminent)
        }
        .fixedSize()
    })
    }
}


struct ContentUnavailablePaging: View {
    var body: some View {
        TabView {
            ContentUnavailableView("SwiftUI", image: "mobile1", description: Text("SwiftUI로 여러가지 App을 만들 수 있습니다."))
            ContentUnavailableView("SwiftUI", image: "mobile2", description: Text("아이폰과 아이패드를 iCloud로 동기화 합니다"))
            ContentUnavailableView("SwiftUI", image: "mobile3", description: Text("온라인 쇼핑 App을 SwiftUI로 만듭니다"))
        }
        .tabViewStyle(.page)
        .indexViewStyle(.page(backgroundDisplayMode: .always))
    }
}

#Preview("Intro") {
    ContentUnavailableView_Basic()
}

#Preview("Paging") {
    ContentUnavailablePaging()
}
