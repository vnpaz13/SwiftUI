//
//  UserModelBasicView.swift
//  SwiftUI_Basic
//
//  Created by VnPaz on 5/5/24.
//

import SwiftUI

struct UserModelBasicView: View {
    
    // property
    @State var users: [UserModel] = [
        UserModel(displayName: "Vn", userName: "Vn13", followerCount: 100, isChecked: true),
        UserModel(displayName: "Paz", userName: "Paz13", followerCount: 200, isChecked: true),
        UserModel(displayName: "Xzi", userName: "xzi13", followerCount: 300, isChecked: true),
        UserModel(displayName: "bit", userName: "bit13", followerCount: 400, isChecked: true)
    ]
    
    
    var body: some View {
        NavigationView {
            List {
                ForEach(users) { user in
                    HStack {
                     // uuid 출력하기
//                        Text(user.id)
                        Circle()
                            .frame(width: 35, height: 35)
                        
                        VStack (alignment: .leading, spacing:5) {
                            Text(user.displayName)
                                .font(.headline)
                            
                            Text("@\(user.userName)")
                                .font(.caption)
                                .foregroundColor(.gray)
                        } // : VStack
                        
                        Spacer()
                        
                        if user.isChecked {
                            Image(systemName: "checkmark.seal.fill")
                                .foregroundColor(.blue)
                        }
                        
                        VStack {
                            Text("\(user.followerCount)")
                                .font(.headline)
                            Text("Followers")
                                .font(.caption)
                                .foregroundColor(.gray)
                        } // : VStack
                    } // : HStack
                    .padding(.vertical, 5)
                }
            } // : List
            .navigationTitle("Member List")
        } // : Navigation
    }
}

#Preview {
    UserModelBasicView()
}
