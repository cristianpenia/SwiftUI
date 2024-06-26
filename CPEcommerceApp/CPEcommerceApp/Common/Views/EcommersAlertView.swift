//
//  EcommersAlertView.swift
//  CPEcommerceApp
//
//  Created by Cristian Peña Barrios on 18/06/24.
//

import SwiftUI

struct EcommersAlertView: View {
    
    var body: some View {
        
        ZStack {
            
            Color.backgroundAlert
                .ignoresSafeArea()
            
            Group {
                
                RoundedRectangle(cornerRadius: 16)
                    .frame(height: 480)
                    .foregroundStyle(.backgroundApp)
                
                VStack(spacing: 48) {
                    
                    Image(systemName: "checkmark.circle.fill")
                        .renderingMode(.template)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100)
                        .foregroundStyle(.ecommerce)
                    
                    VStack(spacing: 24) {
                        
                        Text("New Password Set Successfully")
                            .font(.title2.weight(.semibold))
                            .multilineTextAlignment(.center)
                        
                        Text("Este es el cuerpo de la notificacion es importnaate dar espacio")
                            .foregroundStyle(.descriptionApp)
                        
                        Button {
                            
                        } label: {
                            Text("Go To Home")
                                .frame(maxWidth: .infinity)
                                .foregroundStyle(.white)
                                .padding()
                                .background(.ecommerce)
                                .cornerRadius(8)
                        }
                    }
                }
                .padding(34)
                
            }
            .frame(width: 340)
            
        }
    }
}

#Preview {
    EcommersAlertView()
}
