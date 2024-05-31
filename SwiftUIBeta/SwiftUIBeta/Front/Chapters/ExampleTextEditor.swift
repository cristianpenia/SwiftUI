//
//  ExampleTextEditor.swift
//  SwiftUIBeta
//
//  Created by Cristian Peña Barrios on 31/05/24.
//

import SwiftUI

struct ExampleTextEditor: View {
    
    @State var text = "Escribe algo..."
    @State var counter = 0
    
    var body: some View {
        
        VStack {
            
            TextEditor(text: $text)
                .font(.title)
                .autocapitalization(.none)
                .disableAutocorrection(true)
                .foregroundStyle(.blue)
                .padding()
                .onChange(of: text, perform: { value in
                    counter = value.count
                })
            
            Text("\(counter)")
                .foregroundStyle(counter <= 20 ? .green : .red)
                .font(.largeTitle)
        }
    }
}

#Preview {
    ExampleTextEditor()
}
