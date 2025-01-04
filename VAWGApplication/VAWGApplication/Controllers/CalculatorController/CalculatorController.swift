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

    func checkCode(value: String) -> Bool {
        return value == model.code
    }

    func buttonClicked(_ value: String) {
        switch value {
        case "0"..."9", ".":
            currentInput.append(value)
        case "=":
            if checkCode(value: currentInput) {print("Show hidden application")}
            model.setOperand(getCurrentOperand(currentInput))
            currentInput = model.calcualteResult()
        case "C":
            currentInput = ""
            model.currentOperand = 0
            model.storedOperand = 0
            model.currentOperator = ""
        case "<":
            if currentInput.count > 0 {
                currentInput.removeLast()
            } else {currentInput = ""}
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
