//
//  ExampleText.swift
//  SwiftUIBeta
//
//  Created by Cristian Peña Barrios on 31/05/24.
//

import SwiftUI

struct ExampleText: View {
    var body: some View {
        
        // 1
//        Text("¿Quieres APRENDER a programar en SWIFTUI y no sabes por dónde empezar? En SwiftBeta te vamos a guiar paso a paso hasta que puedas crear tu primera APLICACIÓN iOS en SWIFT con las últimas tecnologías como SWIFTUI.")
//            .font(.largeTitle)
//            .underline()
//            .rotation3DEffect(
//                .degrees(20),
//                axis: (x: 1.0, y: 0.0, z: 0.0)
//            )
//            .shadow(color: .gray,radius: 2, x: 0, y: 10)
//            .lineLimit(10) // numero de lineas
//            .lineSpacing(10) // espacio entre lineas
//            .padding()
        
        // 2
        // se puede concatenar varios text teniendo diferentes estilos
//        VStack {
//        Text("¿Quieres APRENDER a programar en SWIFTUI")
//                .font(.largeTitle)
//                .underline()
//                .foregroundColor(.red)
//            + Text("y no sabes por dónde empezar? En SwiftBeta te vamos a guiar paso a paso")
//                .font(.body)
//                .foregroundColor(.blue)
//            
//            + Text("hasta que puedas crear tu primera APLICACIÓN iOS")
//                .font(.headline)
//                .underline()
//                .foregroundColor(.green)
//            
//        }
        
        // 3
        // jugar con fechas
        VStack {
            Text(Date(), style: .date)
            Text(Date(), style: .time)
            Text(Date(), style: .timer)
            Text(Date().addingTimeInterval(3600), style: .timer)
        }
        
    }
}

#Preview {
    ExampleText()
}

/*
 se puede concatenar varios text teniendo diferentes estilos
 */
