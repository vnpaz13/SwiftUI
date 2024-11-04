//
//  NavigationViewBasic.swift
//  SwiftUI_Basic
//
//  Created by VnPaz on 5/4/24.
//
// NavigationView : 네비게이션 스택을 사용한 다른 화면으로 전환
// NavigationLink : event 또는 특정조건 만족시 지정한 목적지로 이동버튼

import SwiftUI

struct NavigationViewBasic: View {
    
    // property
    @State var showSheet: Bool = false
    
    var body: some View {
        NavigationView {
            VStack {
                NavigationLink {
                    // destination : 목적지 -> 어디로 페이지 이동할건지
                    SecondNavigationView()
                } label: {
                    Text("Second NavigationView 이동")
                        .foregroundColor(.white)
                        .font(.headline)
                        .padding()
                        .background(Color.blue)
                        .cornerRadius(10)
                }
            } // : VStack
            // navigationTitle - 상단의 페이지 제목
            .navigationTitle("페이지 제목")
            // navigationBarTitleDisplayMode - 상단 페이지 제목 스타일
            // .automatic: 자동, inline - 상단에 작게, large - leading 쪽으로 크게
            .navigationBarTitleDisplayMode(.automatic)
            // navigationBarHidden - 네비게이션 타이틀, 바를 감추는 거임
//            .navigationBarHidden(true)
            // navigationBarItems 상단 좌우에 icon, text, button을 사용해서 나타냄
            .navigationBarItems(
                leading: Image(systemName: "line.3.horizontal"),
                trailing: Button(action: {
                    showSheet.toggle()
                }, label: {
                    Image(systemName: "gear")
                })
            )
        } // : NavigationView
        .sheet(isPresented: $showSheet) {
            ZStack {
                Color.green.ignoresSafeArea()
                Text("설정 페이지 입니다")
                    .font(.largeTitle)
            }
        }
    }
}

#Preview {
    NavigationViewBasic()
}
