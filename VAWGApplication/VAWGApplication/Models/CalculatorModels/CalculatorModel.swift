//
//  CalculatorModel.swift
//  VAWGApplication
//
//  Created by Ryan Salisbury on 14/12/2024.
//

import SwiftUI
import Foundation

class CalculatorModel {
    var result: Int = 0
    var currentOperand = 0
    var storedOperand: Int = 0
    var currentOperator: String = ""

    func setOperand(_ operand: Int) {
        currentOperand = operand
    }

    // Set the operator (e.g., when "+" is pressed)
    func setOperator(_ operator: String) {
        currentOperator = `operator`
        storedOperand = currentOperand
        currentOperand = 0
    }

    // calculate result function
    func calcualteResult() {
        switch currentOperator {
        case "+":
            result = storedOperand + currentOperand
        case "-":
            result = storedOperand - currentOperand
        case "*":
            result = storedOperand * currentOperand
        case "/":
            result = (storedOperand != 0) ? (storedOperand / currentOperand) : 0
        default:
            result = currentOperand
        }
    }
}
