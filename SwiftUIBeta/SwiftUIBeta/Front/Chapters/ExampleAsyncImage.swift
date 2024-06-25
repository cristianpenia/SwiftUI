//
//  ExampleAsyncImage.swift
//  SwiftUIBeta
//
//  Created by Cristian Peña Barrios on 20/06/24.
//

import SwiftUI

struct ExampleAsyncImage: View {
    
    private let url = URL(string: "https://placebear.com/1000/1000")!
    
    var body: some View {
        AsyncImage(url: url) { image in
            image
                .resizable()
                .scaledToFit()
                .cornerRadius(20)
                .padding()
        } placeholder: {
            ProgressView()
        }

    }
}

#Preview {
    ExampleAsyncImage()
}
