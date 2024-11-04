//
//  IOSDeviceViewModel.swift
//  SwiftUI_Basic
//
//  Created by VnPaz on 5/5/24.
//

import Foundation

class IOSDeviceViewModel: ObservableObject {
    
    @Published var iOSDeviceArray: [IOSDeviceModel] = []
    
    init() {
        getData()
    }
    
    
    
    func getData() {
        
        // 값 선언
        let iphone = IOSDeviceModel(name: "Iphone")
        let iPad = IOSDeviceModel(name: "IPad")
        let iMac = IOSDeviceModel(name: "IMac")
        let appleWatch = IOSDeviceModel(name: "A-Watch")
        
        // 값 넣기
        self.iOSDeviceArray.append(iphone)
        self.iOSDeviceArray.append(iPad)
        self.iOSDeviceArray.append(iMac)
        self.iOSDeviceArray.append(appleWatch)
        
    }
}
