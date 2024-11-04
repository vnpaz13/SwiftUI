//
//  StackBasic.swift
//  SwiftUI_Basic
//
//  Created by VnPaz on 4/30/24.
//
// VStack: Vertical Stack (세로로 나열)
// HStack: Horizontal Stack (가로로 나열)
// ZStack: Z-index Stack (겹쳐서 나열)


import SwiftUI

struct StackBasic: View {
    var body: some View {
        // 1. VStack
        VStack(alignment: .leading, spacing: 20){
            Rectangle()
                .fill(Color.red)
                .frame(width: 200, height: 200)
            Rectangle()
                .fill(Color.green)
                .frame(width: 150, height: 150)
            
            Rectangle()
                .fill(Color.orange)
                .frame(width: 100, height: 100)
        }
    }
}

struct StackBasic2: View {
    var body: some View {
        // 2. HStack
        HStack(spacing: 20){
            Rectangle()
                .fill(Color.red)
                .frame(width: 100, height: 100)
            Rectangle()
                .fill(Color.green)
                .frame(width: 100, height: 100)
            
            Rectangle()
                .fill(Color.orange)
                .frame(width: 100, height: 100)
        }
    }
}

struct StackBasic3: View {
    var body: some View {
        // 3. ZStack
        ZStack(alignment: .topLeading) {
            Rectangle()
                .fill(Color.red)
                .frame(width: 200, height: 200)
            Rectangle()
                .fill(Color.green)
                .frame(width:150, height: 150)
            
            Rectangle()
                .fill(Color.orange)
                .frame(width: 100, height: 100)
        }
    }
}

struct StackBasic4: View {
    var body: some View {
        // 4. Stack 응용
        ZStack (alignment: .top) {
            Rectangle()
                .fill(Color.yellow)
                .frame(width: 350, height: 500)
            
            VStack(alignment: .leading, spacing: 30) {
                Rectangle()
                    .fill(Color.red)
                    .frame(width: 150, height: 150)
                
                Rectangle()
                    .fill(Color.green)
                    .frame(width: 100, height: 100)
                
                HStack(alignment: .bottom, spacing: 10) {
                    Rectangle()
                        .fill(Color.purple)
                        .frame(width: 50, height: 50)
                    
                    Rectangle()
                        .fill(Color.pink)
                        .frame(width: 75, height: 75)
                    
                    Rectangle()
                        .fill(Color.blue)
                        .frame(width: 25, height: 25)
                }
                .background(Color.white)
            }
            .background(Color.black)
        }
    }
}

struct StackBasic5: View {
    var body: some View {
        // 5. ZStack 응용
        VStack(spacing: 50){
            ZStack {
               Circle()
                    .frame(width: 100, height: 100)
                
                Text("1")
                    .font(.title)
                    .foregroundColor(.white)
            }
            
        // Background를 사용해서 원에 1을 동일하게 표현 - layer가 단순할 경우 추천
            Text("1")
                .font(.title)
                .foregroundColor(.white)
                .background(
                Circle()
                    .frame(width: 100, height: 100)
                )
        
        }
    }
}


#Preview {
    StackBasic()
}

#Preview {
    StackBasic2()
}

#Preview {
    StackBasic3()
}

#Preview {
    StackBasic4()
}

#Preview {
    StackBasic5()
}
