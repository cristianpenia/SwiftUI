//
//  ExampleDragGesture.swift
//  SwiftUIBeta
//
//  Created by Cristian Peña Barrios on 20/06/24.
//

import SwiftUI

struct ExampleDragGesture: View {
    
    @State var dragOffset: CGSize = .zero
    
    var body: some View {
        
        RoundedRectangle(cornerRadius: 20)
            .frame(width: 100, height: 100)
            .offset(x: dragOffset.width, y: dragOffset.height)
            .gesture(
                DragGesture()
                    .onChanged({ value in
                        dragOffset = value.translation
                    })
                    .onEnded({ _ in
                        withAnimation(.spring()) {
                            dragOffset = .zero
                        }
                    })
            )
    }
}

#Preview {
    ExampleDragGesture()
}
