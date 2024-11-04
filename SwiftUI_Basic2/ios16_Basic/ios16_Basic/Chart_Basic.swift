//
//  Chart_Basic.swift
//  ios16_Basic
//
//  Created by VnPaz on 5/9/24.
//

import SwiftUI
import Charts

struct WeightModel: Identifiable{
    var id: String = UUID().uuidString
    var day: String
    var weight: Double
}

var weightData: [WeightModel] = [
    WeightModel(day: "Sun", weight: 77),
    WeightModel(day: "Mon", weight: 80),
    WeightModel(day: "Tue", weight: 90),
    WeightModel(day: "Wed", weight: 82),
    WeightModel(day: "Thu", weight: 70),
    WeightModel(day: "Fri", weight: 60),
    WeightModel(day: "Sat", weight: 88),

]

// MARK: - View


struct Chart_Basic: View {
    var body: some View {
        // custom Color array
        let barColor: [Color] = [.red, .black, .green, .yellow, .purple, .teal]
        
        ScrollView {
            VStack (spacing: 20) {
                Text("1. Bar-type")
                Chart(weightData) { item in
                    BarMark(
                        x: .value("Day", item.day),
                        y: .value("Weight", item.weight)
                    )
                    .foregroundStyle(by: .value("Day", item.day))
                    .annotation(position: .top) {
                        Image(systemName: "square.and.arrow.down")
                            .foregroundColor(.red)
                    }
                } //: Chart
                .frame(height: 200)
                // customColor
                .chartForegroundStyleScale(
                    domain: weightData.compactMap({ weight -> String in weight.day
                    }),
                range: barColor
                )
                .frame(height: 200)
                
                Divider()
                
                Text("2. Line-type")
                Chart(weightData) { item in
                    LineMark(
                        x: .value("Day", item.day),
                        y: .value("Weight", item.weight)
                    )
//                    .lineStyle(StrokeStyle(lineWidth: 5))
//                    .symbol(by: .value("Day", item.day))
//                    .interpolationMethod(.catmullRom)
                    .interpolationMethod(.stepEnd)
                }
                .frame(height:200)
                
                Divider()
                
                Text("3. Rectangle-type")
                Chart(weightData) { item in
                    RectangleMark(
                        x: .value("Day", item.day),
                        y: .value("Weight", item.weight)
                    )
//                    .lineStyle(StrokeStyle(lineWidth: 5))
//                    .symbol(by: .value("Day", item.day))
//                    .interpolationMethod(.catmullRom)
                    .interpolationMethod(.stepEnd)
                }
                .frame(height:200)
            }
            
            VStack (spacing: 20) {
                Text("4. Area-type")
                Chart(weightData) { item in
                    AreaMark(
                        x: .value("Day", item.day),
                        y: .value("Weight", item.weight)
                    )
                    .interpolationMethod(.catmullRom)
                    
                    RuleMark(
                        y: .value("Mid", 75)
                    )
                    .foregroundStyle(.red)
                }
                .frame(height:200)
            }
            .padding()
        }
    }
    
    
    
}

#Preview {
    Chart_Basic()
}
