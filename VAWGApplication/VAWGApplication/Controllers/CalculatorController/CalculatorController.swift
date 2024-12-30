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

    var test = ["5 "]

    // move to utils file
    func getCurrentOperand(_ wholeString: String) -> Int {
        print(test.last ?? "")
        if wholeString.isEmpty {
            // throw error
            print("You must enter an operand before performing and operation")
        }
        let components = wholeString.split { char in
            operators.contains(String(char))
        }
        print("components: ", components)
        print("components.count: ", components.count)

        if components.count > 2 {
            if let lastComponent = components.last {
                let val = lastComponent.trimmingCharacters(in: .whitespacesAndNewlines)
                print("getCurrentOperand function: ", val)
                return Int(val) ?? 0
            }
        } else {
            if let firstComponent = components.first {
                let val = firstComponent.trimmingCharacters(in: .whitespacesAndNewlines)
                print("getCurrentOperand function: ", val)
                return Int(val) ?? 0
            }
            print("single operand in string")
        }
        return 0
    }
//    
//    func getCurrentOperand2(_ wholeString: String) -> Int {
//        if wholeString.isEmpty {
//            print("You must enter an operand before performing an operation")
//            return 0
//        }
//        
//        // Split the string based on operators
//        let components = wholeString.split { char in
//            operators.contains(String(char))
//        }
//        
//        print("Components: \(components)")
//        
//        // Get the last component if it exists
//        if let lastComponent = components.last {
//            let val = lastComponent.trimmingCharacters(in: .whitespacesAndNewlines)
//            print("getCurrentOperand function (cleaned): ", val)
//            return Int(val) ?? 0
//        }
//        
//        // Return 0 if no valid operand found
//        return 0
//    }

    func isMultipleOperands(val: String) -> Bool {
        let cleanedVals = val.trimmingCharacters(in: .whitespaces)
        let components = cleanedVals.split { char in
            operators.contains(String(char))
        }
        print(components)
        if components.count > 1 {
            return true
        }
        return false
    }
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
            if operators.contains(value) {
                currentInput.append(" \(value) ")
                if isMultipleOperands(val: currentInput) {
//                    print("multipleOperators found in expression")
                    model.setOperator(value, isMultipleOperators: true)
//                    print("model.storedOperand: \(model.storedOperand)")
//                    print("model.currentOperand: \(model.currentOperand)")
                } else {
//                    print("multipleOperators not found in expression")
                    model.setOperator(value, isMultipleOperators: false)
                    print("getCurrentOperand(currentInput): \(getCurrentOperand(currentInput))")
                    model.setOperand(getCurrentOperand(currentInput))
//                    print("model.storedOperand: \(model.storedOperand)")
//                    print("model.currentOperand: \(model.currentOperand)")
                }
            }
        }
    }
}
