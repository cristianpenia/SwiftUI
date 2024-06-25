//
//  ExampleAlert.swift
//  SwiftUIBeta
//
//  Created by Cristian Peña Barrios on 18/06/24.
//

import SwiftUI

struct ExampleAlert: View {
    
    @State var isPresented: Bool = false
    
    var body: some View {
        
        VStack {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            
            Button {
                isPresented = true
            } label: {
                Text("Aceptar")
            }
            
        }
        .alert(isPresented: $isPresented, content: {
            Alert(title: Text("Titulo"),
                  message: Text("Mensaje"),
                  primaryButton: .default(Text("Aceptar"),
                                          action: {
                print("Button tapped")
            }),
                  secondaryButton: .destructive(Text("Cancelar")))
        })
    }
}

#Preview {
    ExampleAlert()
}
