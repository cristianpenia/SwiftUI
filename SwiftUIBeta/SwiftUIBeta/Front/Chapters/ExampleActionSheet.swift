//
//  ExampleActionSheet.swift
//  SwiftUIBeta
//
//  Created by Cristian Peña Barrios on 18/06/24.
//

import SwiftUI

struct ExampleActionSheet: View {
    
    @State var isPresented: Bool = false
    
    var body: some View {
        VStack {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            
            Button {
                isPresented = true
            } label: {
                Text("Action sheet")
            }
            
        }
        .actionSheet(isPresented: $isPresented,
                     content: {
            ActionSheet(title: Text("Aprende SwiftUI"),
                        message: Text("Para ser un buen desarrollador iOS"),
                        buttons: [
                            .default(Text("El Primer button de prueba"),
                                     action: {
                                         print("primer button")
                                     }),
                            .default(Text("Este es otro Button de prueba")),
                            .destructive(Text("Cancelar"),
                                         action: {
                                             print("cancelar")
                                         })
                        ])
        })
    }
}

#Preview {
    ExampleActionSheet()
}
