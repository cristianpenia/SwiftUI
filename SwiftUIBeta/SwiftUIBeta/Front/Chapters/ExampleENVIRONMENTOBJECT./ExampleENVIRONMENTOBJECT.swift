//
//  ExampleENVIRONMENTOBJECT.swift
//  SwiftUIBeta
//
//  Created by Cristian Peña Barrios on 20/06/24.
//

import SwiftUI

class ViewModel : ObservableObject {
    @Published var counter: Int = 0
}

struct ExampleENVIRONMENTOBJECT: View {
    
    @StateObject var viewModel = ViewModel()
    
    var body: some View {
        
        VStack {
            Text("Contador: \(viewModel.counter)")
                .bold()
                .font(.largeTitle)
                .padding()
            
            Text("View Main")
            
            OneEnviromentObjetView()
        }
        .environmentObject(viewModel)
        
    }
}

#Preview {
    ExampleENVIRONMENTOBJECT()
}
