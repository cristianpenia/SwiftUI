//
//  ExampleLabel.swift
//  SwiftUIBeta
//
//  Created by Cristian Peña Barrios on 31/05/24.
//

import SwiftUI

struct ExampleLabel: View {
    var body: some View {
        Label("Hola Rufus!", systemImage: "hand.thumbsup")
            .font(.largeTitle)
            .labelStyle(IconOnlyLabelStyle())
        
        Label("Hola Rufus!", systemImage: "hand.thumbsup.fill")
            .font(.largeTitle)
            .labelStyle(TitleOnlyLabelStyle())
    }
}

#Preview {
    ExampleLabel()
}

/*
 usado para mostrar un icono y un texto
 */
