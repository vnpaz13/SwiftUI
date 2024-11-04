//
//  FrameBasic.swift
//  SwiftUI_Basic
//
//  Created by VnPaz on 4/30/24.
//

import SwiftUI

struct FrameBasic: View {
    var body: some View {
        VStack (spacing: 20){
        // 1
            Text("Hello, World!")
                .font(.title)
                .background(Color.green)
                .frame(width:200, height: 200, alignment: .center)
                .background(Color.red)
            
            Divider()
        // 2
            Text("Hellow, World!")
                .font(.title)
                .background(Color.green)
                .frame(maxWidth: .infinity ,maxHeight: .infinity, alignment: .center )
                .background(Color.red)
        }
    }
}

struct FrameBasic2: View {
    var body: some View {
        VStack (spacing: 20){
        //3
            Text("Hello, World!")
                .font(.title)
                .background(Color.red)
                .frame(height: 100, alignment: .top)
                .background(Color.orange)
                .frame(width: 200)
                .background(Color.purple)
                .frame(maxWidth: .infinity, alignment: .leading)
                .background(Color.pink)
                .frame(height: 400)
                .background(Color.green)
                .frame(maxHeight: .infinity, alignment: .top)
                .background(Color.yellow)
            
        }
    }
}

#Preview {
    FrameBasic()
}

#Preview {
    FrameBasic2()
}
