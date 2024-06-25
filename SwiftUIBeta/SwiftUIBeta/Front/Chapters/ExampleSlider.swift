//
//  ExampleSlider.swift
//  SwiftUIBeta
//
//  Created by Cristian Peña Barrios on 04/06/24.
//

import SwiftUI

struct ExampleSlider: View {
    
    @State var iPhoneCounter: Float = 5.0
    
    var body: some View {
        
        Form {
            Slider(value: $iPhoneCounter,
                   in: 1...10) {
                
                Text("Selecciona número de iPhone")
            } minimumValueLabel: {
                Text("min")
            } maximumValueLabel: {
                Text("max")
            }
            
            Text("\(iPhoneCounter)")
                .foregroundStyle(.green)
        }
        
        
    }
}

#Preview {
    ExampleSlider()
}
