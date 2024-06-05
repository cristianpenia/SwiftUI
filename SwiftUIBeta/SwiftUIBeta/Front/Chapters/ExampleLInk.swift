//
//  ExampleLInk.swift
//  SwiftUIBeta
//
//  Created by Cristian Peña Barrios on 04/06/24.
//

import SwiftUI

struct ExampleLInk: View {
    var body: some View {
        VStack(spacing:16 ) {
            
            Link("Ir a SwiftBeta", destination: URL(string: "https://www.swiftbeta.com")!)
            
            Link(destination: URL(string: UIApplication.openSettingsURLString)!) {
                
                Label("Settings", systemImage: "gear")
                    .font(.headline)
                    .foregroundStyle(.white)
                    .padding()
                    .background(.blue)
                    .cornerRadius(12)
            }
            

            
        }
    }
}

#Preview {
    ExampleLInk()
}
