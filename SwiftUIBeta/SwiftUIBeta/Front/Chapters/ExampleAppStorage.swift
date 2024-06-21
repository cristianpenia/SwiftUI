//
//  ExampleAppStorage.swift
//  SwiftUIBeta
//
//  Created by Cristian Peña Barrios on 20/06/24.
//

import SwiftUI

struct ExampleAppStorage: View {
    
    @State var name: String = ""
    @AppStorage("appStorageName") var appStorageName: String = ""
    
    var body: some View {
        
        Form {
            TextField("Username", text: $name)
            
            HStack {
                Spacer()
                Button("Save") {
                    appStorageName = name
                }
                .padding()
                Spacer()
            }
            
            HStack {
                Spacer()
                Button("Print value") {
                    print(UserDefaults.standard.string(forKey: "appStorageName"))
                }
                .padding()
                Spacer()
            }
        }
        .onAppear {
            name = appStorageName
        }
    }
}

#Preview {
    ExampleAppStorage()
}

/*
 - AppStorage es usado para persistir informacion
 - usa por debajo UserDefault
 -
 */
