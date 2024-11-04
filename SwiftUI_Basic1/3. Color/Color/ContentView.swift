//
//  ContentView.swift
//  Color
//
//  Created by VnPaz on 3/14/24.
//

import SwiftUI

struct ContentView: View {
    let customColor = #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1)
    var body: some View {
        Circle()
//            .fill(Color(hue: 0.555, saturation: 0.616, brightness: 0.444))
            // ,fill(Color(customColor)
            .fill(Color("modeColor"))
            .frame(width: 200, height: 200)
        
    }
}

#Preview {
    ContentView()
}

// ContentView 하단 좌측 바에서
// 2번째는 속성 설정 3번째는 라이트모드, 다크모드 동시에 보기 설정 가능 Color Scheme
// 다크모드 설정은 Asset들어가서 설정한다. DocumnetView 하단에 [+] 버튼 누른 후 Color Set 누르기 가능. Color 이름 변경해주기
