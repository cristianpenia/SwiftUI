//
//  ExampleFullScreenCoverAndSheet.swift
//  SwiftUIBeta
//
//  Created by Cristian Peña Barrios on 11/06/24.
//

import SwiftUI

struct ExampleFullScreenCoverAndSheet: View {
    
    @State var isPresented: Bool = false
    
    var body: some View {
        
        VStack {
            Text("View 1")
                .padding()
            
            Button {
                isPresented = true
            } label: {
                Text("OK")
            }
        }
//        .sheet(isPresented: $isPresented,
        .fullScreenCover(isPresented: $isPresented,
                         onDismiss: { isPresented = false },
                         content: {
            ZStack {
                Color.red.ignoresSafeArea()
                Button {
                    isPresented = false
                } label: {
                    Text("Hola Rufus!")
                }

            }
        })
    }
}

#Preview {
    ExampleFullScreenCoverAndSheet()
}
