//
//  CalculationBar.swift
//  VAWGApplication
//
//  Created by Ryan Salisbury on 27/12/2024.
//

import SwiftUI

struct CalculationBar: View {
    @ObservedObject var calc: CalculatorController
    var body: some View {
        VStack {
            Text(calc.currentInput).onAppear {
                print(calc.currentInput)
            }
        }
    }
}
