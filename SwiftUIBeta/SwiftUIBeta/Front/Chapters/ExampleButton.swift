//
//  ExampleButton.swift
//  SwiftUIBeta
//
//  Created by Cristian Peña Barrios on 31/05/24.
//

import SwiftUI

struct ExampleButton: View {
    
    var body: some View {
        
        VStack(spacing: 16) {
            
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            
            Button {
                print("HOLA RUFUS, DEJA DE MORDER MIS TENIS")
            } label: {
                Text("My Button")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundStyle(.white)
                    .padding()
                    .background(.red)
                    .cornerRadius(10)
                    .shadow(radius: 10)
                    
                
            }
            
            Button {
                print("Dale like al repo :)")
            } label: {
                Circle()
                    .fill()
                    .frame(width: 200, height: 200)
                    .shadow(radius: 10)
                    .overlay{
                        Image(systemName: "hand.thumbsup.fill")
                            .foregroundStyle(.white)
                            .font(.system(size: 70, weight: .bold))
                    }
                
            }
        }
    }
}

#Preview {
    ExampleButton()
}

/*
 
 */
