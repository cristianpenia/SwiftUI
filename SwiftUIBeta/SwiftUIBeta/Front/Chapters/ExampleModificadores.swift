//
//  ExampleModificadores.swift
//  SwiftUIBeta
//
//  Created by Cristian Peña Barrios on 25/06/24.
//

import SwiftUI

struct NewButtonModifier: ViewModifier {
    
    func body(content: Content) -> some View {
        content
            .font(.body)
            .foregroundStyle(.white)
            .padding()
            .background(Color.blue)
            .cornerRadius(24)
    }
}

extension View {
    func newButtonModifier() -> some View {
        self.modifier(NewButtonModifier())
    }
}

struct ExampleModificadores: View {
    
    var body: some View {
        
        VStack {
            
            Text("Viva el rey Rufus!")
                .bold()
                .padding()
            
            Button("OK") {
                print("Sigan a Rufus en todas sus redes sociales")
            }
//            .modifier(NewButtonModifier())
            .newButtonModifier()
        }
    }
}

#Preview {
    ExampleModificadores()
}
