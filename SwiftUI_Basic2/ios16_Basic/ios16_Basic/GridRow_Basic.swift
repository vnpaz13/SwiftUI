//
//  GridRow_Basic.swift
//  ios16_Basic
//
//  Created by VnPaz on 5/9/24.
//

import SwiftUI

struct GridRow_Basic: View {
    var body: some View {
        VStack (spacing: 20) {
            Grid {
                GridRow {
                    Color.red
                    Color.red
                    Color.red
                }
                
                GridRow{
                    Color.red
                        .frame(width: 100, height: 100)
                    Color.red
                        .frame(width: 30, height: 30)
                        .gridCellColumns(1)
                        .gridCellAnchor(.leading)
                }
            }
            .frame(height: 200)
            
            Divider()
            
            Grid {
                GridRow {
                    Color.blue
                        .frame(width: 30, height: 30)
                    Color.blue
                        .frame(width: 30, height: 30)
                    Color.blue
                        .frame(width: 30, height: 30)
                }
                
                GridRow {
                    Color.blue
                        .frame(width:30, height: 30)
                }
            }
            .frame(height: 200)
        }
        .padding()
    }
}

#Preview {
    GridRow_Basic()
}
