//
//  ContentView.swift
//  CPEcommerceApp
//
//  Created by Cristian Peña Barrios on 18/06/24.
//

import SwiftUI

struct SplashScreenView: View {
    
    @State var showAlert: Bool = false
    
    var body: some View {

        ZStack {
            
            VStack {
                
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundStyle(.titleApp)
                
                Button(action: {
                    showAlert.toggle()
                }, label: {
                    Text("Splash Screen")
                        .foregroundStyle(.titleApp)
                        .font(.title.weight(.semibold))
                })
                
                Spacer()
            }
            .padding()
            
            if showAlert {
                EcommersAlertView()
            }
        }
    }
}

#Preview {
    SplashScreenView()
}
