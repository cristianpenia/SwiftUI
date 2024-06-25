//
//  ExampleNavigation.swift
//  SwiftUIBeta
//
//  Created by Cristian Peña Barrios on 11/06/24.
//

import SwiftUI

struct ExampleNavigation: View {
    
    var body: some View {
        
        NavigationView {
            
            List {
                NavigationLink("Option Menu 1",
                               destination: Text("Some information")) 
                NavigationLink("Option Menu 2",
                               destination: Button(action: {
                    print("Hello iOS Developer")
                }, label: {
                    Text("Tap me!")
                }))

                Text("Option Menu 3")
                Text("Option Menu 4")
            }
            
            .navigationBarItems(trailing: Button(action: {
                print("NavigationView Button")
            }, label: {
                Text("Done")
            }))
            .navigationTitle("Menu")
            .navigationBarTitleDisplayMode(.large)
//            .navigationBarTitleDisplayMode(.inline)
            .navigationBarHidden(false)
        }
    }
}

#Preview {
    ExampleNavigation()
}
