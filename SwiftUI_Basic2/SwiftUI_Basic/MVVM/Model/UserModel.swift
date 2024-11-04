//
//  UserModel.swift
//  SwiftUI_Basic
//
//  Created by VnPaz on 5/5/24.
//

import Foundation

struct UserModel: Identifiable {
    let id: String = UUID().uuidString
    let displayName: String
    let userName: String
    let followerCount: Int
    let isChecked: Bool
}
