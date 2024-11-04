//
//  ContentView.swift
//  Discussion2
//
//  Created by VnPaz on 3/30/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Hello, World!")
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(Color.yellow,
                            ignoresSafeAreaEdges: []) // array 안에 .all을 넣음으로써 default값을 만들어줌 / ios15 이상부터 default로 ignoresSafeArea가 됨.
        }
    }
}

#Preview {
    ContentView()
}
