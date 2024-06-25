//
//  ExampleForm.swift
//  SwiftUIBeta
//
//  Created by Cristian Peña Barrios on 11/06/24.
//

import SwiftUI

struct ExampleForm: View {
    
    
    // MARK: Properties
    
    @State var deviceName: String = "iPhone 15 Pro Max"
    @State var isNetwrokOn: Bool = true
    @State var date: Date = Date()
    @State var color: Color = .blue
    
    
    var body: some View {
        Form {
            
            Section {
                TextField("Devicename", text: $deviceName)
                Toggle("Wi-Fi", isOn: $isNetwrokOn)
            } header: {
                Text("Settings")
            }

            Section {
                DatePicker("Date", selection: $date)
                ColorPicker("Color", selection: $color)
            } header: {
                Text("Account")
            } footer: {
                HStack {
                    Spacer()
                    Label("version 1.0", systemImage: "iphone")
                    Spacer()
                }
            }

            
        }
    }
}

#Preview {
    ExampleForm()
}
