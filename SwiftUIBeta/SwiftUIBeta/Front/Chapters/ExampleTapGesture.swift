//
//  ExampleTapGesture.swift
//  SwiftUIBeta
//
//  Created by Cristian Peña Barrios on 18/06/24.
//

import SwiftUI

struct ExampleTapGesture: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 20)
            .frame(width: 100, height: 100)
//            .gesture(
////                TapGesture()
//                TapGesture(count: 2) // num de taps
//                    .onEnded { _ in
//                        print("view")
//                    }
//            )
        
            .onTapGesture(count: 2) {
                print("View on tap gesture")
            }
    }
}

#Preview {
    ExampleTapGesture()
}
