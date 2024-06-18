//
//  ContentView.swift
//  CPEcommerceApp
//
//  Created by Cristian Peña Barrios on 18/06/24.
//

import SwiftUI

struct SplashScreenView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Splash Screen")
                .foregroundStyle(.ecommerce)
        }
        .padding()
    }
}

#Preview {
    SplashScreenView()
}
