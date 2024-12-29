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

    var operators: [String] = ["+", "-", "*", "/"]

    func buttonClicked(_ value: String) {
        switch value {
        case "0"..."9":
            currentInput.append(value)
        case "=":
            print(model.calcualteResult())
            currentInput = model.calcualteResult()
        default:
            if operators.contains(value) {
                model.setOperand(Int(currentInput) ?? 0)
                currentInput.append(" \(value) ")
                model.setOperator(value)
            }
        }
    }
}
