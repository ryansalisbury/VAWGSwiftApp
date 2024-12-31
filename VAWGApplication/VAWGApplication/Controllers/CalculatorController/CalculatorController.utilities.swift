//
//  CalculatorController.utilities.swift
//  VAWGApplication
//
//  Created by Ryan Salisbury on 31/12/2024.
//
import Foundation

enum Operators: String, CaseIterable {
    case add = "+"
    case subtract = "-"
    case multiply = "*"
    case divide = "/"

    static func contains(_ char: Character) -> Bool {
        return Operators.allCases.contains { $0.rawValue == String(char)}
    }
}

func isMultipleOperands(val: String) -> Bool {
    let cleanedVals = val.trimmingCharacters(in: .whitespaces)
    let components = cleanedVals.split { char in
        Operators.contains(char)
    }
    print(components)
    if components.count > 1 {
        return true
    }
    return false
}

func getCurrentOperand(_ wholeString: String) -> Int {
        if wholeString.isEmpty {
            // error handling
            print("You must enter an operand before performing and operation")
            return 0
        }
        let trimmedString = wholeString.trimmingCharacters(in: .whitespaces)
        let components = trimmedString.split { char in
            Operators.contains(char)
        }
        if components.count > 1 {
            if let lastComponent = components.last {
                let val = lastComponent.trimmingCharacters(in: .whitespacesAndNewlines)
                return Int(val) ?? 0
            }
        } else {
            if let firstComponent = components.first {
                let val = firstComponent.trimmingCharacters(in: .whitespacesAndNewlines)
                return Int(val) ?? 0
            }
        }
        return 0
}
