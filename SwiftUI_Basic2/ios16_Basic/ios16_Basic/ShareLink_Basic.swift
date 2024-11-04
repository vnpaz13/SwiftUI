//
//  ShareLink_Basic.swift
//  ios16_Basic
//
//  Created by VnPaz on 5/9/24.
//

import SwiftUI

struct ShareLink_Basic: View {
    
    let natureImage = ImageFile(image: Image("nature"))
    var body: some View {
        VStack (spacing: 20) {
            // URL ShareLink
            ShareLink(item: URL(string: "http://naver.com")!) {
                Text("링크 Share")
                    .font(.largeTitle)
            }
            
            // Image ShareLink
            ShareLink(item: natureImage, preview: SharePreview("NaTuRe 사진", image: natureImage.image)) {
                Text("Image Share")
                    .font(.largeTitle)
            }
        }
    }
}

#Preview {
    ShareLink_Basic()
}



struct ImageFile: Transferable {
    var image: Image
    static var transferRepresentation: some TransferRepresentation {
    ProxyRepresentation(exporting: \.image)
    }
}
