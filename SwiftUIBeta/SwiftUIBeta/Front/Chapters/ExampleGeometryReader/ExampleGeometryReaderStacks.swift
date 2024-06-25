//
//  ExampleGeometryReaderStacks.swift
//  SwiftUIBeta
//
//  Created by Cristian Peña Barrios on 25/06/24.
//

import SwiftUI

struct ExampleGeometryReaderStacks: View {
    
    var body: some View {
        
        VStack {
            
            GeometryReader { proxy in
                
                VStack(spacing: 0) {
                    
                    HStack(spacing: 0) {
                        
                        Rectangle()
                            .foregroundStyle(.green)
                            .overlay { Text("1") }
                            .frame(width: proxy.size.width/2,
                                   height: proxy.size.height/2)
                        
                        Rectangle()
                            .foregroundStyle(.orange)
                            .overlay { Text("2") }
                            .frame(width: proxy.size.width/2,
                                   height: proxy.size.height/2)
                    }
                    
                    Rectangle()
                        .foregroundStyle(.purple)
                        .overlay { Text("3") }
                        .frame(width: proxy.size.width,
                               height: proxy.size.height * 0.33)
                }
            }
            .background(.red)
        }
    }
}

#Preview {
    ExampleGeometryReaderStacks()
}
