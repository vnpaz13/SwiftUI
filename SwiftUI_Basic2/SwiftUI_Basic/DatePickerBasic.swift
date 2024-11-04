//
//  DatePickerBasic.swift
//  SwiftUI_Basic
//
//  Created by VnPaz on 5/4/24.
//

import SwiftUI

struct DatePickerBasic: View {
    
    @State var selectedDate1: Date = Date()
    @State var selectedDate2: Date = Date()
    @State var selectedDate3: Date = Date()
    @State var selectedDate4: Date = Date()
    @State var selectedDate5: Date = Date()
    
    // 현재 시간 String으로 화면에 나타내기
    var currentDate: String {
        // Date() 화면 오늘 날짜 시간 불러오기
        let current = Date()
        let formatter = DateFormatter()
        
        // 한국 시간으로 표시
        formatter.locale = Locale(identifier: "ko_kr") // 날짜와 시간
        formatter.timeZone = TimeZone(abbreviation: "KST") // 한국 시간대
        
        // 형태 변환
        formatter.dateFormat = "yyyy년 MM월 dd일 a HH시 mm분"
        formatter.amSymbol = "오전"
        formatter.pmSymbol = "오후"
        
        // String 타입으로 변환해서 return
        return formatter.string(from: current)
    }
    
    // DatePicker 용 DateFormatter
    var dateFormatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        formatter.timeStyle = .short
        return formatter
    }
    
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: true) {
           
            // 기본형
            VStack (spacing: 20) {
                Text("현재 시간: \(currentDate)")
                
                Divider()
                
                // 기본 DatePicker
                VStack {
                    DatePicker("기본 DatePicker", selection: $selectedDate1)
                        .accentColor(Color.red)
                        .datePickerStyle(.compact)
                    
                    Text("선택된 날짜는 \(dateToKR(selectedDate:selectedDate1))")
                }
                
                Divider()
                
                // 달력형
                VStack {
                    DatePicker("달력", selection: $selectedDate2)
                        .datePickerStyle(.graphical)
                    Text("선택된 날짜는 \(dateToKR(selectedDate:selectedDate2))")
                }
                
                Divider()
                
                VStack {
                    DatePicker("휠", selection: $selectedDate3)
                        .datePickerStyle(.wheel)
                    Text("선택된 날짜는 \(dateToKR(selectedDate:selectedDate3))")
                }
                
                Divider()
                
                VStack {
                    DatePicker("날짜만 선택", selection: $selectedDate4,
                               displayedComponents: [.date])
                    Text("선택된 날짜는 \(dateToKR(selectedDate:selectedDate4))")

                }
            }
            .padding()
        }
    }
    
    // function
    func dateToKR (selectedDate: Date) -> String {
        
        let formatter = DateFormatter()
        // 한국 시간으로 표시
        formatter.locale = Locale(identifier: "ko_kr") // 날짜와 시간
        formatter.timeZone = TimeZone(abbreviation: "KST") // 한국 시간대
        
        // 형태 변환
        formatter.dateFormat = "yyyy년 MM월 dd일 a HH시 mm분"
        formatter.amSymbol = "오전"
        formatter.pmSymbol = "오후"
        
        // String 타입으로 변환해서 return
        return formatter.string(from: selectedDate)
        
    }
}

#Preview {
    DatePickerBasic()
}
