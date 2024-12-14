//
//  CalculatorController.swift
//  VAWGApplication
//
//  Created by Ryan Salisbury on 14/12/2024.
//

import SwiftUI

class CalculatorController {
    var model = CalculatorModel()
    var currentInput = ""

    func buttonClicked(_ value: String) {
        switch value {
        case "0"..."9":
            currentInput.append(value)
        case "=":
            model.calcualteResult()
        default:
            print("no cases hit in controller")
        }
    }
}
