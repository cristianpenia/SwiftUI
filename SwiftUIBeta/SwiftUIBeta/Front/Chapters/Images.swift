//
//  Images.swift
//  SwiftUIBeta
//
//  Created by Cristian Peña Barrios on 30/05/24.
//

import SwiftUI

struct Images: View {
    var body: some View {
        // mode 1
        // como importar
        // como usarla
        // como debugear
        
//        Image("youtube")
//            .renderingMode(.template)
//            .resizable() // ocupa todo el espacio que tengas
//            .scaledToFit() // ajusta al ancho des espacio disponible
//            .frame(width: 96, height: 68)
//            .foregroundStyle(.blue)
        
        
        // mode 2
        // como crear un patron
        
        Image("youtube")
            .resizable(resizingMode: .tile)
        
    }
}

#Preview {
    Images()
}
