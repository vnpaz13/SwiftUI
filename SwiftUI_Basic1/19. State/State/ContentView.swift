//
//  ContentView.swift
//  State
//
//  Created by VnPaz on 4/1/24.
//
// State = SwiftUI에서 제공되는 wrapper 타입의 유형으로 변수 앞에 위치하며 해당 프로퍼티 데이터 값에 접근할 수 있으며 또한 최신 값을 반영한다.


import SwiftUI

struct ContentView: View {
    @State var changeWidth: CGFloat = 200
    @State var title = "@State"
    @State var backColor = Color.yellow
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 20)
                .fill(backColor)
            .frame(width: changeWidth, height: 100)
            
            Text("\(title)")
                .font(.title)
        }
        
        Text("Width is \(Int(changeWidth))")
        HStack(spacing: 50) {
            // - button
            Button(action: {
                changeWidth = changeWidth - 10
                title = "(-) Button"
                backColor = Color.purple
            }, label: {
                Text("-")
                    .font(.system(size:30, weight: .semibold))
                    .foregroundStyle(Color.white)
                    .frame(width: 50, height: 50)
                    .background(Color.pink)
                    .clipShape(Circle())
            })
            
            // + button
            Button(action: {
                changeWidth = changeWidth + 10
                title = "(+) Button"
                backColor = Color.cyan
            }, label: {
                Text("+")
                    .font(.system(size:30, weight: .semibold))
                    .foregroundStyle(Color.white)
                    .frame(width: 50, height: 50)
                    .background(Color.green)
                    .clipShape(Circle())
            })
        }
        
    }
}

#Preview {
    ContentView()
}
