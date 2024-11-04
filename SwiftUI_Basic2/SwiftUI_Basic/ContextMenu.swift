//
//  ContextMenu.swift
//  SwiftUI_Basic
//
//  Created by VnPaz on 5/4/24.
//

import SwiftUI

struct ContextMenu: View {
    
    @State var statusText: String = ""
    @State var background: Color = Color.cyan
    
    var body: some View {
        
        Text("버튼을 길게 눌러보세요")
        
        VStack (spacing: 30) {
            Text(statusText)
            
            VStack(alignment: .leading, spacing: 10){
                Text("Context Menu Text")
                    .font(.headline)
                Text("이 버튼을 길게 누르면 메뉴가 나타납니다")
                    .font(.subheadline)
            }
            .foregroundColor(.white)
            .padding(30)
            .background(background)
            .cornerRadius(20)
            .contextMenu {
                
                Button {
                    statusText = "공유가 되었습니다"
                    background = .yellow
                } label: {
                    Label {
                        Text("Share post")
                    } icon: {
                        Image(systemName: "square.and.arrow.up")
                    }
                }
                
                Button {
                    statusText = "신고가 되었습니다"
                    background = .red
                } label: {
                    Label {
                        Text("Report post")
                    } icon: {
                        Image(systemName: "exclamationmark.bubble")
                    }
                }
                
                Button {
                    statusText = "좋아요 추가"
                    background = .green
                } label: {
                    Label {
                        Text("Like post")
                    } icon: {
                        Image(systemName: "hand.tumbsup")
                    }
                }
                
            }
            
        }
    }
}

#Preview {
    ContextMenu()
}
