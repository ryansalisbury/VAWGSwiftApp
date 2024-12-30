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
        HStack {
            Text(calc.currentInput).font(.largeTitle.weight(.bold)).padding()
                .onAppear {
                print(calc.currentInput)
            }
        }
    }
}
