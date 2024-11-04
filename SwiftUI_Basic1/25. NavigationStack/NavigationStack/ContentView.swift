//
//  ContentView.swift
//  NavigationStack
//
//  Created by VnPaz on 4/2/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        //        NavigationView {
        //            VStack {
        //                NavigationLink("Click Me") {
        //                    Text("Push View")
        //                }
        //
        //                NavigationLink("Sample1", destination: {
        //                    Text("Sample View")
        //                })
        //                .navigationTitle("Settings")
        //            }
        //        }
        //
        //    }
        
        NavigationStack {
            VStack {
                NavigationLink("Click Me") {
                    Text("Push View")
                    Text("Old nav Style")
                }
                NavigationLink(value: "New style Data flow", label: {
                    Text("New Nav")
                })
                .navigationDestination(for: String.self, destination: { text in
                  Text("This is : \(text)")
                })
                NavigationLink("Click Me2") {
                    Text("Push View2")
                }
                .navigationTitle("Settings")
            }
        }
        
    }
}

#Preview {
    ContentView()
}
