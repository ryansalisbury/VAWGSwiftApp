//
//  VAWGApplicationApp.swift
//  VAWGApplication
//
//  Created by Ryan Salisbury on 20/10/2024.
//

import Combine
import SwiftUI

@main
struct VAWGApplicationApp: App {
    @StateObject var appState = AppState()
    @StateObject var featurFlags = FeatureFlags()
    var body: some Scene {
        WindowGroup {
            if !appState.showApp {
                // Masked Weather application View
                ZStack(alignment: .bottomTrailing) {
                    if appState.calculatorApp {
                        CalculatorAppView()
                            .environmentObject(appState)
                    } else if appState.weatherApp {
                        WeatherAppView()
                            .environmentObject(appState)
                    }
                }
            } else {
                // VAWG Application:
                TabView {
                    JournalView()
                        .tabItem {
                            Label("Journal", systemImage: "book")
                        }
                }.environmentObject(appState)
            }
        }
    }
}
