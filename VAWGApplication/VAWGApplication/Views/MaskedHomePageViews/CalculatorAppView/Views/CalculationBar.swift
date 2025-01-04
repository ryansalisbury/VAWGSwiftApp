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
            Text(calc.currentInput)
                .frame(height: 70)
                .font(.system(size: 70, weight: .light))
                .foregroundStyle(.white)
                .padding()
                .onAppear {
                print(calc.currentInput)
            }
        }
    }
}
