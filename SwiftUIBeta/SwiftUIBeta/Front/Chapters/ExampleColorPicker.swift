//
//  ExampleColorPicker.swift
//  SwiftUIBeta
//
//  Created by Cristian Peña Barrios on 04/06/24.
//

import SwiftUI

struct ExampleColorPicker: View {
    
    @State var color: Color = .blue
    
    var body: some View {
        
        VStack(spacing: 8) {
            
            Rectangle()
                .foregroundStyle(color)
                .frame(width: .infinity, height: 60)
            
            ColorPicker("Selecciona un color",
                        selection: $color)
        }
        .padding()
    }
}

#Preview {
    ExampleColorPicker()
}
