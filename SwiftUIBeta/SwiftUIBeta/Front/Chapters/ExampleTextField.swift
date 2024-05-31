//
//  ExampleTextField.swift
//  SwiftUIBeta
//
//  Created by Cristian Peña Barrios on 31/05/24.
//

import SwiftUI

struct ExampleTextField: View {
    
    @State var username: String = ""
    @State var password: String = ""
    
    var body: some View {
        
        VStack {
            
            TextField("Username", text: $username)
                .keyboardType(.emailAddress)
                .autocorrectionDisabled()
                .padding(8)
                .font(.headline)
                .background(.gray.opacity(0.3))
                .cornerRadius(8)
                .padding(.horizontal, 60)
                .padding(.top, 40)
                .onChange(of: username, perform: { value in
                    print("New value is \(value)")
                })
            SecureField("Password", text: $password)
                .keyboardType(.emailAddress)
                .autocorrectionDisabled()
                .padding(8)
                .font(.headline)
                .background(.gray.opacity(0.3))
                .cornerRadius(8)
                .padding(.horizontal, 60)
                .padding(.top, 10)
                .onChange(of: username, perform: { value in
                    print("New value is \(value)")
                })
            Spacer()
        }
        .padding()
    }
}

#Preview {
    ExampleTextField()
}
