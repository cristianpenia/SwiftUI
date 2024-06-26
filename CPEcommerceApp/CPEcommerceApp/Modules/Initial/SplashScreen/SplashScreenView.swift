//
//  ContentView.swift
//  CPEcommerceApp
//
//  Created by Cristian Peña Barrios on 18/06/24.
//

import SwiftUI

struct SplashScreenView: View {
    
    var body: some View {

        ZStack {
            
            ZStack {
                
                Image("e-commerce")
                
                VStack {
                    
                    Spacer()
                    
                    Image("e-commerce-points")
                }
            }
            .padding()
            
        }
    }
}

#Preview {
    SplashScreenView()
}
