//
//  Icon.swift
//  SwiftUIBeta
//
//  Created by Cristian Peña Barrios on 30/05/24.
//

import SwiftUI

struct Icon: View {
    var body: some View {
        Image(systemName: "cloud.rainbow.half.fill")
            .renderingMode(.template)
            .resizable()
            .scaledToFit()
            .frame(width: 200)
            .foregroundStyle(.green)
        Text("hello")
    }
}

#Preview {
    Icon()
}

/*
 
 */
