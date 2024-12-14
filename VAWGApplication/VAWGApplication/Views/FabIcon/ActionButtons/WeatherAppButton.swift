//
//  WeatherAppButton.swift
//  VAWGApplication
//
//  Created by Ryan Salisbury on 13/12/2024.
//

import SwiftUI

struct WeatherAppButton: View {
    @EnvironmentObject var appState: AppState

    var body: some View {
        Button {
            // Weather Mask Button
            appState.calculatorApp = false
            appState.weatherApp = true
            print("appState.weatherApp: \(appState.weatherApp)")
            print("appState.calculatorApp: \(appState.calculatorApp)")
        } label: {
            Image(systemName: "cloud.rainbow.crop.fill")
                .font(.title.weight(.semibold))
                .padding().background(Color.yellow)
                .foregroundColor(.white).clipShape(.circle).shadow(radius: 4, x: 0, y: 4)
        }
    }
}
