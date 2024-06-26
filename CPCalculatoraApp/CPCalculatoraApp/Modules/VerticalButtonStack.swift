//
//  VerticalButtonStack.swift
//  CPCalculatoraApp
//
//  Created by Cristian Peña Barrios on 25/06/24.
//

import SwiftUI

struct VerticalButtonStack: View {
    
    let data: [KeyboardButton]
    let colums: [GridItem]
    let width: CGFloat
    
    init(data: [KeyboardButton], colums: [GridItem], width: CGFloat) {
        self.data = data
        self.colums = colums
        self.width = width
    }
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    VerticalButtonStack()
}
