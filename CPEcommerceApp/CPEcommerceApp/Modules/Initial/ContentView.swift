//
//  ContentView.swift
//  CPEcommerceApp
//
//  Created by Cristian Peña Barrios on 20/06/24.
//

import SwiftUI

struct ContentView: View {
    @State private var showSplashScreen = true

    var body: some View {
        
        ZStack {
            
            if showSplashScreen {
                
                SplashScreenView()
                    .transition(.opacity)
                    .onAppear {
                        
                        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                            withAnimation {
                                showSplashScreen = false
                            }
                        }
                    }
            } else {
                InitialView()
                    .transition(.opacity)
            }
        }
    }
}

#Preview {
    ContentView()
}
