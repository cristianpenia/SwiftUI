//
//  ExampleToggle.swift
//  SwiftUIBeta
//
//  Created by Cristian Peña Barrios on 04/06/24.
//

import SwiftUI

struct ExampleToggle: View {
    
    @State var isOn: Bool = false
    
    var body: some View {
        
        Form {
            Toggle("Dale like al repo", isOn: $isOn)
            Text("El valor es \(isOn.description)")
        }
    }
}

#Preview {
    ExampleToggle()
}
