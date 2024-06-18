//
//  ExampleContextMenu.swift
//  SwiftUIBeta
//
//  Created by Cristian Peña Barrios on 18/06/24.
//

import SwiftUI

struct ExampleContextMenu: View {
    
    var body: some View {
        
        VStack {
            
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .padding()
                .contextMenu(ContextMenu(menuItems: {
                    
                    Button(action: {
                        print("one")
                    }, label: {
                        Text("One option")
                    })
                    
                    Button(action: {
                        print("two")
                    }, label: {
                        Text("Two menu option")
                    })
                    
                    Button(action: {
                        print("last")
                    }, label: {
                        Label(
                            title: { Text("Last option") },
                            icon: { Image(systemName: "house") }
                        )
                    })
                }))
        }
    }
}

#Preview {
    ExampleContextMenu()
}
