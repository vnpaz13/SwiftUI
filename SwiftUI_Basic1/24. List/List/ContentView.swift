//
//  ContentView.swift
//  List
//
//  Created by VnPaz on 4/2/24.
//
//  List = TableView in UIKit
//  List에는 ScrollView이 내장 되어 있음.

import SwiftUI

struct ContentView: View {
    @State var showSectionArrow = true
    
    @State var cars = [
        "Hyundai",
        "Kia",
        "Tesla",
        "BMW",
        "Mercesdes"
    ]
    
    var body: some View {
        List {
            Section("Car Brands", isExpanded: $showSectionArrow) {
                ForEach(cars, id: \.self) {
                    car in
                    Text("\(car)")
                }
                .onDelete(perform: { indexSet in
                    cars.remove(atOffsets: indexSet)
                })
                
            }
            
            Section("Detail Model", isExpanded: $showSectionArrow) {
                    Text("GV80")
                    Text("G90")
                    Text("BMW 520")
                    Text("E Class")
                }
            }
        .listStyle(.sidebar)
            

        }
    }


#Preview {
    ContentView()
}
