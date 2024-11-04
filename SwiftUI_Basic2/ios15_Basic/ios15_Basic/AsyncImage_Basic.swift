//
//  AsyncImage_Basic.swift
//  ios15_Basic
//
//  Created by VnPaz on 5/8/24.
//
// Lorem Picsum
// 사진 쉽게 불러오는 사이트


import SwiftUI

struct AsyncImage_Basic: View {
    
    let url = URL(string: "https://picsum.photos/200")
    
    var body: some View {
        VStack (spacing: 20) {
            // 일반적인 AsyncImage 사용 with ProgressView()
            Text("1. 일반적인 AsyncImage 사용 예시")
                .font(.headline)
            
            AsyncImage(url:url) { Image in
                Image
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200, height: 200)
                    .cornerRadius(20)
            } placeholder: {
                ProgressView()
            }
            
            Divider()
            
            // switch를 통한 Image error
            
            /*
             switch case
             case empty -> Image 없음
             case success -> Image 로드 성공
             case failure -> Image 로드 실패 with error
            */
            Text("2. Switch를 통한 Image error 처리")
                .font(.headline)
            
            AsyncImage(url: url) { raw in
                switch raw {
                case .empty:
                    ProgressView()
                    
                case .success(let image):
                    image
                        .resizable()
                        .scaledToFit()
                        .frame(width: 200, height: 200)
                        .cornerRadius(20)
                    
                case .failure:
                    Text("Image가 로드 되지 않음")
                default:
                    Text("Image가 로드 되지 않음")
                }
            }
        }
    }
}

#Preview {
    AsyncImage_Basic()
}
