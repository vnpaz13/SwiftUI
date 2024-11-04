//
//  SwipeAction_Basic.swift
//  ios15_Basic
//
//  Created by VnPaz on 5/8/24.
//

import SwiftUI

struct SwipeAction_Basic: View {
    
    @State var fruits: [String] = [
        "사과", "오렌지", "바나나", "복숭아"
    ]
    var body: some View {
        List {
            ForEach(fruits, id: \.self) {
                Text($0)
                    .swipeActions(edge: .trailing, allowsFullSwipe: false) {
                        Button {
                            // action
                        } label: {
                            Text("SAVE")
                        }
                        .tint(.green)
                        
                        Button {
                            // action
                        } label: {
                            Text("DELETE")
                        }
                        .tint(.red)
                    }
                    .swipeActions(edge: .leading, allowsFullSwipe: true){
                        Button {
                            // action
                        } label: {
                            Text("SHARE")
                        }
                        .tint(.yellow)
                    }
            }
        }
    }
}

#Preview {
    SwipeAction_Basic()
}
