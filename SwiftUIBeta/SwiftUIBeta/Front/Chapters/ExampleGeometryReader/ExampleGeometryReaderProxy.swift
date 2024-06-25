//
//  ExampleGeometryReaderProxy.swift
//  SwiftUIBeta
//
//  Created by Cristian Peña Barrios on 25/06/24.
//

import SwiftUI

struct ExampleGeometryReaderProxy: View {
    var body: some View {
        GeometryReader { proxy in
            VStack {
                Text("Width \(proxy.size.width)")
                    .background(Color.orange)
                    .padding()
                Text("Height \(proxy.size.height)")
                    .background(Color.orange)
                    .padding()
                Text("Coordinates Local \(proxy.frame(in: .local).debugDescription)")
                    .background(Color.orange)
                    .padding()
                Text("Coordinates Global \(proxy.frame(in: .global).debugDescription)")
                    .background(Color.orange)
                    .padding()
            }
        }
        .background(.red)
        .frame(width: 300, height: 300)
    }
}

#Preview {
    ExampleGeometryReaderProxy()
}
