//
//  PWState.swift
//  SwiftUIBeta
//
//  Created by Cristian Peña Barrios on 30/05/24.
//

import SwiftUI

struct PWState: View {
    
    @State var counter: Int = 0
    
    var body: some View {
        Text("Counter \(counter)")
        
        Button("Incremetar Valor") {
            counter += 1
        }
    }
}

#Preview {
    PWState()
}

/*
 State es un Property Wrapper
 permite la mutabilidad
 cuando modificamos un valor de nuestra vista con state la vista se vuelve a dibujar para mostrar el nuevo valor
 */
