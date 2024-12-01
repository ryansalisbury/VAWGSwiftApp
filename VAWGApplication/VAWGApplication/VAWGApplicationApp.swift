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

    var body: some Scene {
        WindowGroup {
            if !appState.showApp {
                // Masked Weather application View
                MaskedHomePageView()
                    .environmentObject(appState)
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
