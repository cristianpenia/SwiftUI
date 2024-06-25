//
//  TwoEnviromentObjeView.swift
//  SwiftUIBeta
//
//  Created by Cristian Peña Barrios on 20/06/24.
//

import SwiftUI

struct TwoEnviromentObjeView: View {
    
    @EnvironmentObject var viewModel: ViewModel
    
    var body: some View {
        
        Text("View 2")
            .padding()
        
        Button {
            viewModel.counter += 1
        } label: {
            Text("Incremetar contador")
        }
    }
}

#Preview {
    TwoEnviromentObjeView()
}
