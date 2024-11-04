//
//  TextFieldBasic.swift
//  SwiftUI_Basic
//
//  Created by VnPaz on 5/4/24.
//

import SwiftUI

struct TextFieldBasic: View {
    
    @State var inputText: String = ""
    @State var userNameData: [String] = []
    
    var body: some View {
        
        NavigationView {
            
            VStack (spacing: 20) {
                
                //TextField : 적은양의 text 입력 시 사용
                TextField("최소 2글자 이상 입력", text: $inputText)
                //  .textFieldStyle(.roundedBorder)
                    .padding()
                    .background(Color.gray.opacity(0.3))
                    .cornerRadius(10)
                    .font(.headline)
                
//                // TextEditior : 여러줄의 입력을 받을 때
//                TextEditor(text: $inputText)
//                    .frame(height: 250)
//                    .colorMultiply(Color.gray.opacity(0.5))

                
                Button {
                    if isTextEnough() {
                        saveText()
                    }
                } label: {
                    Text("save".uppercased())
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(isTextEnough() ? Color.blue : Color.gray)
                        .cornerRadius(10)
                        .foregroundColor(.white)
                        .font(.headline)
                    
                }
                .disabled(!isTextEnough())
                
                ForEach(userNameData, id:\.self) {
                    item in
                    Text(item)
                }
                
                Spacer()
            }
            .padding()
            .navigationTitle("당신의 이름은?")
        }
    }
    
    func isTextEnough() -> Bool {
        // 2개 이상의 텍스트가 되면 true, 아니면 false
        if inputText.count >= 2 {
            return true
        } else {
            return false
        }
    }
    
    func saveText() {
        userNameData.append(inputText)
        inputText = ""
    }
}

#Preview {
    TextFieldBasic()
}
