//
//  PickerBasic.swift
//  SwiftUI_Basic
//
//  Created by VnPaz on 5/4/24.
//

import SwiftUI

struct PickerBasic: View {
    
    let typeOfPhone : [String] = [
        "Apple","Samsung","Xiaomi","Etc"
    ]

    @State var selectedIndex: Int = 0

    var body: some View {
        NavigationView {
            Form {
                Section {
                    Picker(selection: $selectedIndex, label: Text("기종 선택")) {
                        ForEach(0 ..< typeOfPhone.count, id: \.self) {
                            index in
                            Text(typeOfPhone[index])
                        } // : Loop
                    } // : Picker
                    .pickerStyle(.segmented)
                } // : Section
                
                Text("스마트폰 제조사는 \(typeOfPhone[selectedIndex]) 입니다")
                    .padding()
                    .foregroundColor(.white)
                    .background(Color.blue)
                    .cornerRadius(10)
                    .font(.headline)
                    .padding()
                    .frame(maxWidth: .infinity, alignment: .center)
                    
            } // : Form
            .navigationTitle(Text("현재 사용중인 스마트폰 기종은?"))
            .navigationBarTitleDisplayMode(.inline)
        } // : Navigation
    }
}

#Preview {
    PickerBasic()
}
