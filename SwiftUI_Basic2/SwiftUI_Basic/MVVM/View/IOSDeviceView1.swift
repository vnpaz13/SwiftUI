//
//  IOSDeviceView1.swift
//  SwiftUI_Basic
//
//  Created by VnPaz on 5/5/24.
//

import SwiftUI

struct IOSDeviceView1: View {
    
    // 처음 ViewModel을 초기화 할때는 @StateObject로 불러오기!
    @StateObject var viewModel: IOSDeviceViewModel = IOSDeviceViewModel()
    
    
    var body: some View {
        NavigationView {
            List {
                ForEach(viewModel.iOSDeviceArray) { item in
                    NavigationLink {
                        IOSDeviceView2(selectedItem: item.name)
                    } label: {
                        Text(item.name)
                    }
                }
            }
        }
        // Navigation 하위 뷰에 ViewModel을 environmentObject로 넘겨줌
        .environmentObject(viewModel)
    }
}

#Preview {
    IOSDeviceView1()
}
