//
//  ExampleStepper.swift
//  SwiftUIBeta
//
//  Created by Cristian Peña Barrios on 04/06/24.
//

import SwiftUI

struct ExampleStepper: View {
    
    @State var iPhoneCounter: Int = 1
    
    var body: some View {
        Form {
            Stepper("iPhone \(iPhoneCounter)",
                    value: $iPhoneCounter,
                    in: 1...5,
                    step: 2)
            
            Stepper("iPhone \(iPhoneCounter)") {
                iPhoneCounter += 1
                print("[Incremetar] Número \(iPhoneCounter)")
            } onDecrement: {
                iPhoneCounter -= 1
                print("[Decrementar] Número \(iPhoneCounter)")
            }

        }
    }
}

#Preview {
    ExampleStepper()
}
