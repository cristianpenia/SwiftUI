//
//  ExampleDatePicker.swift
//  SwiftUIBeta
//
//  Created by Cristian Peña Barrios on 04/06/24.
//

import SwiftUI

struct ExampleDatePicker: View {
    
    @State var currentDate: Date = Date()
    
    var body: some View {
        
        VStack {
            DatePicker("Selecciona Fecha", selection: $currentDate)
    //            .datePickerStyle(WheelDatePickerStyle())
                .datePickerStyle(GraphicalDatePickerStyle())
            
            Form {
                
                DatePicker("Hora",
                           selection: $currentDate,
                           in: Date()...,
                           displayedComponents: .hourAndMinute)
                           
                
                DatePicker("Fecha",
                           selection: $currentDate,
                           in: ...Date(),
                           displayedComponents: .date)
                
                Text(currentDate, style: .date)
                    .bold()
                
            }
        }
        
        
        
    }
}

#Preview {
    ExampleDatePicker()
}
