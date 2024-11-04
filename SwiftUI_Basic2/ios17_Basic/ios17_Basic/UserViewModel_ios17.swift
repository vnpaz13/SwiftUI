//
//  UserViewModel_ios17.swift
//  ios17_Basic
//
//  Created by VnPaz on 5/13/24.
//

import Foundation
import Observation


// MARK: - 기존에 만들었던 ViewModel 방식
class UserObservableObject: ObservableObject {
    let name: String = "vmi"
    @Published var number: Int = 0
    @Published var isClick: Bool = false
}

// MARK: - ios17부터는 @Observable 사용하기

@Observable
class UserObservableMacro {
    let name: String = "vm2"
    var number : Int = 0
    var isClick : Bool = false
}
