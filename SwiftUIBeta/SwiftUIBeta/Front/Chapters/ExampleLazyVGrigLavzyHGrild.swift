//
//  ExampleLazyVGrigLavzyHGrild.swift
//  SwiftUIBeta
//
//  Created by Cristian Peña Barrios on 04/06/24.
//

import SwiftUI

struct ExampleLazyVGrigLavzyHGrild: View {
    var body: some View {
        
        
        // MARK: Properties
        
        let element = 1...500
        let gridItem = [GridItem(.fixed(100)),
//                        GridItem(.adaptive(minimum: 20)),
                        GridItem(.fixed(100)),
                        GridItem(.fixed(100))]
        
        // MARK: Views
        
        VStack {
            
            ScrollView(.horizontal) {
                
                LazyHGrid(rows: gridItem, content: {
                    ForEach(element, id: \.self) { element in
                        VStack {
                            Circle()
                                .frame(height: 40)
                            Text("\(element)")
                        }
                    }
                })
            }
            
            ScrollView(.vertical) {
                LazyVGrid(columns: gridItem, content: {
                    ForEach(element, id: \.self) { element in
                        VStack {
                            Rectangle()
                                .frame(height: 30)
                            Text("\(element)")
                        }
                    }
                })
            }
            
        }
        
    }
}

#Preview {
    ExampleLazyVGrigLavzyHGrild()
}
