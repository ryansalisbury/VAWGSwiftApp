//
//  CalculatorController.swift
//  VAWGApplication
//
//  Created by Ryan Salisbury on 27/12/2024.
//

import SwiftUI

class CalculatorController: ObservableObject {
    var model = CalculatorModel()
    @Published var currentInput: String = ""

    func buttonClicked(_ value: String) {
        switch value {
        case "0"..."9":
            currentInput.append(value)
        case "=":
            model.setOperand(getCurrentOperand(currentInput))
            currentInput = model.calcualteResult()
        case "C":
            currentInput = ""
            model.currentOperand = 0
            model.storedOperand = 0
            model.currentOperator = ""
        default:
            if Operators.contains(Character(value)) {
                currentInput.append(" \(value) ")
                if isMultipleOperands(val: currentInput) {
                    model.setOperand(getCurrentOperand(currentInput))
                    model.setOperator(value, isMultipleOperators: true)
                } else {
                    model.setOperand(getCurrentOperand(currentInput))
                    model.setOperator(value, isMultipleOperators: false)
                    }
            }
        }
    }
}
