//
//  ExampleProgressView.swift
//  SwiftUIBeta
//
//  Created by Cristian Peña Barrios on 04/06/24.
//

import SwiftUI

struct ExampleProgressView: View {
    
    @State var loading: Bool = false
    @State var progress: Float = 0.0
    
    var body: some View {

        VStack(spacing: 16) {
            
            Spacer()
            
            if loading {
                ProgressView("Cargando...")
                    .scaleEffect(2)
            } else {
                Button(action: {
                    loading.toggle()
                }, label: {
                    Text("Cargar")
                })
            }
            
            if !loading {
                ProgressView(value: progress)
                    .padding()
                
                Button(action: {
                    progress += 0.1
                }, label: {
                    Text("Progreso")
                })
            }
            
            Spacer()
            
            Button(action: {
                loading = false
            }, label: {
                Text("Stop progress")
            })
        }
    }
}

#Preview {
    ExampleProgressView()
}
