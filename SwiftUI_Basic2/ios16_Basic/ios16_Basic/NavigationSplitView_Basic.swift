//
//  NavigationSplitView_Basic.swift
//  ios16_Basic
//
//  Created by VnPaz on 5/11/24.
//

import SwiftUI

struct NavigationSplitView_Basic: View {
    var body: some View {
        NavigationSplitView {
            // iPhone 일때는 Detail 화면이 나타나지 않음
            // SideBar
            Text("Sidebar")
                .navigationTitle("NavigationSplitView")
        } detail: { // Detail
            // iPad 일 경우에만 Detail 부분 나옴
            Text("Detail")
        }
    }
}

struct NavigationSpliteViewVisibility: View {
    
    
    @State private var visibility = NavigationSplitViewVisibility.all
    
    var body: some View {
        NavigationSplitView(columnVisibility: $visibility) {
            // SideBar
            Text("SideBar")
        } detail: {
            Text("Detail")
            Button("Show SideBar") {
                visibility = .all
            }
        }
    }
}

struct NavigationSplitView3: View {
    var body: some View {
        NavigationSplitView {
            // SideBar
            Text("SideBar")
//                .navigationSplitViewColumnWidth(120)
        } content: {
            Text("Content")
//                .navigationSplitViewColumnWidth(min: 900, ideal: 1000)
        } detail: {
            Text("Detail")
//                .navigationSplitViewColumnWidth(200)
        }
        // .automatic : Width 설정 한 값에 크기 맞추기
        // .balanced: SideBardhk Content가 보이게 되면 Detail 부분이 줄어듦
        // .prominentDetail: Detail 부분이 main에 위치하게 됨
        .navigationSplitViewStyle(.prominentDetail)
    }
}




#Preview {
    NavigationSplitView_Basic()
}

#Preview {
    NavigationSpliteViewVisibility()
}

#Preview {
    NavigationSplitView3()
}
