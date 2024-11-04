//
//  IOSDeviceView3.swift
//  SwiftUI_Basic
//
//  Created by VnPaz on 5/5/24.
//

import SwiftUI

struct IOSDeviceView3: View {
    
    // @StateObject에서 선언한 viewModel을 @Environment를 통해 가져오기
    @EnvironmentObject var viewModel: IOSDeviceViewModel
    
    var body: some View {
        ZStack {
            Color.cyan.ignoresSafeArea()
            
            ScrollView {
                VStack (spacing: 20){
                    ForEach(viewModel.iOSDeviceArray) { item in
                        Text(item.name)
                    }
                }
                .foregroundColor(.white)
                .font(.largeTitle)
            }
        }
    }
}

#Preview {
    IOSDeviceView3()
        .environmentObject(IOSDeviceViewModel())
}
