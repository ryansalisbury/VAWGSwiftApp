//
//  CalculatorAppButton.swift
//  VAWGApplication
//
//  Created by Ryan Salisbury on 13/12/2024.
//
import SwiftUI

struct CalculatorAppButton: View {
    @EnvironmentObject var appState: AppState

    var body: some View {
        Button {
            // Calculator Mask Button
            appState.calculatorApp = true
            appState.weatherApp = false
        } label: {
            Image(systemName: "numbers.rectangle")
                .font(.title.weight(.semibold))
                .padding().background(Color.yellow)
                .foregroundColor(.white).clipShape(.circle).shadow(radius: 4, x: 0, y: 4)
        }
    }
}
