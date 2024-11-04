//
//  SecondNavigationView.swift
//  SwiftUI_Basic
//
//  Created by VnPaz on 5/4/24.
//

import SwiftUI

struct SecondNavigationView: View {
    
    // property
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ZStack {
            Color.green.ignoresSafeArea()
                .navigationTitle("돌아가기")
                .navigationBarHidden(true)
            
            VStack (spacing: 20){
                Button {
                    presentationMode.wrappedValue.dismiss()
                } label: {
                    Text("이전 페이지로 이동")
                        .foregroundColor(.green)
                        .font(.headline)
                        .padding()
                        .background(Color.white)
                        .cornerRadius(20)
                    
                }
                
                NavigationLink {
                    // destination
                    ZStack {
                        Color.red.ignoresSafeArea()
                        Text("3번째 페이지 입니다")
                            .font(.largeTitle)
                    }
                } label: {
                    Text("다음 페이지로 이동")
                        .foregroundColor(.green)
                        .font(.headline)
                        .padding()
                        .background(Color.white)
                        .cornerRadius(20)
                }
            }
        }
    }
}

#Preview {
    SecondNavigationView()
}
