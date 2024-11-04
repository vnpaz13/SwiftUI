//
//  AlertBasic.swift
//  SwiftUI_Basic
//
//  Created by VnPaz on 5/4/24.
//
// Alert: pop-up 창으로 UI화면에 메세지를 나타냄

import SwiftUI

struct AlertBasic: View {
    
    @State var showAlert1: Bool = false
    @State var showAlert2: Bool = false
    @State var showAlert3: Bool = false
    @State var showAlert4: Bool = false
    
    @State var backgroundColor: Color = Color.yellow
    @State var alertTitle: String = ""
    @State var alertMessage: String = ""
    @State var alertType: AlertCase? = nil
    
    enum AlertCase {
        case success
        case error
    }
    var body: some View {
        ZStack {
            backgroundColor.ignoresSafeArea()
            
            VStack (spacing: 20) {
                
                // 1
                Button {
                    showAlert1.toggle()
                } label: {
                    Text("1번 Alert")
                }
                .alert(isPresented: $showAlert1) {
                    Alert(title: Text("패스워드 에러 입니다. 다시 확인하세요"))
                }
                
                // 2
                Button {
                    showAlert2.toggle()
                } label: {
                    Text("2번 Alert")
                }
                .alert(isPresented: $showAlert2) {
                    getAlert2()
                }
                
                
                // 3
                HStack (spacing: 10) {
                    Button(action: {
                        alertTitle = "영상 업로드 에러"
                        alertMessage = "다시 확인해주세요"
                        showAlert3.toggle()
                    }, label: {
                        Text("3번 Alert 실패시")
                    })
                    
                    Button(action: {
                        alertTitle = "영상 업로드 성공"
                        alertMessage = "성공!"
                        showAlert3.toggle()
                    }, label: {
                        Text("3번 Alert 성공시")
                    })
                }
                .alert(isPresented: $showAlert3) {
                    getAlert3()
                }
                
                
                // 4
                HStack (spacing: 10) {
                    Button(action: {
                        alertType = .error
                        alertTitle = "영상 업로드 에러"
                        alertMessage = "다시 확인해주세요"
                        showAlert4.toggle()
                    }, label: {
                        Text("4번 Alert 실패시")
                    })
                    
                    Button(action: {
                        alertType = .success
                        alertTitle = "영상 업로드 성공"
                        alertMessage = "성공!"
                        showAlert4.toggle()
                    }, label: {
                        Text("4번 Alert 성공시")
                    })
                }
                .alert(isPresented: $showAlert4) {
                    getAlert4()
                }
                
            }
            
        }
    }
    
    
    func getAlert2() -> Alert {
        return Alert(title: Text("메세지 삭제"),
                     message: Text("정말 삭제하시겠습니까?"),
                     primaryButton: .destructive(Text("Delete"),  action: {
                            backgroundColor = .red
                           }),
                     secondaryButton: .cancel())
    }
    
    func getAlert3() -> Alert {
        return Alert(title: Text(alertTitle),
                     message: Text(alertMessage),
                     dismissButton: .default(Text("OK"))
        )
    }
    
    func getAlert4() -> Alert {
        switch alertType {
            
        case.error:
            return Alert(title: Text("에러 발생 다시 확인하세요"), dismissButton: .default(Text("OK"), action: {
                backgroundColor = .red
            }))
            
        case.success:
            return Alert(title: Text("로그인 성공!"), dismissButton: .default(Text("OK"), action: { backgroundColor = .green
            }))
            
            
        default:
            return Alert(title: Text("에러"))
            
        }
    }
}

#Preview {
    AlertBasic()
}
