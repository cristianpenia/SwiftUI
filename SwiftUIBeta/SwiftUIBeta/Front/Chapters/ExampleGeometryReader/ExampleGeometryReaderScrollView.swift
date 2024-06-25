//
//  ExampleGeometryReaderScrollView.swift
//  SwiftUIBeta
//
//  Created by Cristian Peña Barrios on 25/06/24.
//

import SwiftUI

let arrayOfNames = [
    "Suscribete a SwiftBeta",
    "Aprende SwiftUI",
    "Aprende Swift",
    "Aprende Xcode",
    "Suscríbete al canal de Youtube",
    "SwiftUI",
    "Xcode",
    "Swift"
]

struct ExampleGeometryReaderScrollView: View {
    
    var body: some View {
        
        ScrollView(showsIndicators: false) {
            
            VStack {
                
                ForEach(arrayOfNames, id: \.self) { name in
                    
                    GeometryReader { proxy in
                        
                        VStack {
                            
                            Text("\(proxy.frame(in: .global).minY)")
                            
                            Spacer()
                            
                            Text("\(name)")
                                .frame(width: 370, height: 200)
                                .background(.green)
                                .cornerRadius(20)
                            
                            Spacer()
                        }
                        .shadow(color: .gray, radius: 10, x: 0, y: 0)
                        .rotation3DEffect(
                            Angle(degrees: Double(proxy.frame(in: .global).minY) - 57),
                                                  axis: (x: 0.0, y: 10.0, z: 0.0)
                        )
                    }
                    .frame(width: 370, height: 300)
                    
                }
            }
            .padding(.trailing)
            
        }
        .padding(.horizontal)
        
    }
}

#Preview {
    ExampleGeometryReaderScrollView()
}
