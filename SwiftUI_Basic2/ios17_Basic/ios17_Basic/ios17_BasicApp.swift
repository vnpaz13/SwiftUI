//
//  ios17_BasicApp.swift
//  ios17_Basic
//
//  Created by VnPaz on 5/13/24.
//

import SwiftUI

@main
struct ios17_BasicApp: App {
    
    
    // 기존에 ViewModel에서 Environment로 넘겨서 전체 APP 단위로 사용할 때 방식
    @StateObject private var vm1 = UserObservableObject()
    
    // ios17부터 변경된 사항
    @State private var vm2 = UserObservableMacro()
    
    var body: some Scene {
        WindowGroup {
            Observation_Basic()
                .environmentObject(vm1) // 기존 방식
                .environment(vm2) // ios17 이후
        }
    }
}
