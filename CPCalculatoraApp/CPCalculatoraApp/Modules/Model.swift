//
//  Model.swift
//  CPCalculatoraApp
//
//  Created by Cristian Peña Barrios on 25/06/24.
//

import SwiftUI

struct KeyboardButton {
    let title: String
    let textColor: Color
    let backgroundColor: Color
    let isDoubleWidth: Bool
    let type: ButtonType
}

enum ButtonType {
    case number(Int)
    case operation(OperationType)
    case result
    case reset
}

enum OperationType {
    case sum
    case multiplication
}
