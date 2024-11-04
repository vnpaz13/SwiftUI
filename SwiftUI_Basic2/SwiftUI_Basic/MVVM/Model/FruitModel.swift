//
//  FruitModel.swift
//  SwiftUI_Basic
//
//  Created by VnPaz on 5/5/24.
//

import Foundation

struct FruitModel: Identifiable {
    let id: String = UUID().uuidString
    let name: String
    let count: Int
}
