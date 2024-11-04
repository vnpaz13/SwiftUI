//
//  Pie&Donut_Basic.swift
//  ios17_Basic
//
//  Created by VnPaz on 5/13/24.
//

import SwiftUI
import Charts

struct SectorMarkData: Identifiable {
    let id = UUID()
    let label: String
    let value: Int
    
    static func fetchData() -> [SectorMarkData] {
        [
            SectorMarkData(label: "민수", value: 35),
            SectorMarkData(label: "철수", value: 25),
            SectorMarkData(label: "영희", value: 30),
            SectorMarkData(label: "영수", value: 10)
        ]
    }
}

struct Pie_Donut_Basic: View {
    
    private let records: [SectorMarkData] = SectorMarkData.fetchData()
    
    var body: some View {
        VStack  (spacing: 20) {
            Chart(records) { data in
                // 1. 파이 차트 만들기
                // .angle: 차트에서 나누는 기준값
                SectorMark(angle: .value("Record", data.value), angularInset: 4)
                    .cornerRadius(10)
                    .blur(radius: data.label == "영수" ? 5 : 0)
                    .foregroundStyle(by: .value("Record Label", data.label))
            }
            .padding(.horizontal)
            
            Chart(records) { data in
                // 2. 도넛 차트 만들기
                SectorMark(angle: .value("Record", data.value),
                           // innerRadius: 안의 도넛 크기 원형 설정
                           innerRadius: MarkDimension.ratio(0.5),
                           // outerRadius: 바깥에 얼마나 padding 값을 주는지 설정
                           outerRadius: MarkDimension.inset(50))
                .foregroundStyle(by:.value("Record Label", data.value))
            }
        }
        .chartLegend(position: .bottom, alignment: .center, spacing: 10)
        .dynamicTypeSize(.accessibility2)
        .padding(.horizontal)
    }
}

#Preview {
    Pie_Donut_Basic()
}
