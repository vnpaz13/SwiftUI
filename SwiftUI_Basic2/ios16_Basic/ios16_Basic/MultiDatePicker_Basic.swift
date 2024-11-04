//
//  MultiDatePicker_Basic.swift
//  ios16_Basic
//
//  Created by VnPaz on 5/11/24.
//

import SwiftUI

struct MultiDatePicker_Basic: View {
    
    @State private var dates: Set<DateComponents> = []
    
    var body: some View {
        VStack (spacing: 20) {
            Text("Multi Date Picker")
                .font(.largeTitle.bold())
                .foregroundStyle(.blue)
            
            MultiDatePicker("Date Picker", selection: $dates)
                .frame(height:400)
                .tint(.red)
            
            
            List {
                Section("선택된 날짜") {
                    ForEach(Array(dates), id: \.self) {
                        date in
                        Text("\(date.month!)월 \(date.day!)일")
                    }
                }
            }
            .font(.title)
            Spacer()
        }
    }
}

struct MultidatePickerSheet: View {
    
    @State private var dates: Set<DateComponents> = []
    @State private var showSheet: Bool = false
    
    // 날짜 빠른 순으로 정렬
    private var sortedDates: [String] {
        dates.sorted { date1, date2 in
            date1.date! < date2.date!
        }
        .map { date in
            "\(date.month!)월 \(date.day!)일"
        }
    }
    
    
    var body: some View {
        VStack (spacing: 10) {
            Text("MultiDatePicker with Sheet")
                .font(.title.bold())
                .foregroundStyle(.blue)
            
            Button("달력 오픈") {
                showSheet.toggle()
            }
            .buttonStyle(.borderedProminent)
            
            List {
                Section("선택된 날짜") {
                    ForEach(sortedDates, id: \.self) { date in
                        Text(date)
                    }
                }
            }
            
            Spacer()
        }
        .font(.title)
        .sheet(isPresented: $showSheet, content: {
            VStack {
                MultiDatePicker("Sheet", selection: $dates)
                
                Button("Done") {
                    showSheet.toggle()
                }
                .buttonStyle(.borderedProminent)
            }
            .presentationDetents([.medium])
        })
    }
}

#Preview {
    MultiDatePicker_Basic()
}

#Preview ("with Sheet") {
    MultidatePickerSheet()
}
