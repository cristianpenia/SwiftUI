//
//  ExampleStateVSBinding.swift
//  SwiftUIBeta
//
//  Created by Cristian Peña Barrios on 20/06/24.
//

import SwiftUI

struct ExampleStateVSBinding: View {
    
    @State var counter: Int = 0
    
    var body: some View {
        
        ExtractedView(counter: $counter)
    }
}

#Preview {
    ExampleStateVSBinding()
}

struct ExtractedView: View {
    
    @Binding var counter: Int
    
    var body: some View {
        
        VStack(spacing: 20) {
            
            Text("\(counter)")
            
            Button(action: {
                counter += 1
            }, label: {
                Text("Incrementar")
            })
        }
    }
}


/*
 usa Binding cuando tengas que mutar una propiedad @State que te llegue de otra vista
 y usa @State cuando tengas que mutar una variable dentro de la misma vista
 */
