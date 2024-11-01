//
//  VAWGApplicationApp.swift
//  VAWGApplication
//
//  Created by Ryan Salisbury on 20/10/2024.
//

import SwiftUI
import Combine

@main
struct VAWGApplicationApp: App {
    @StateObject var appState = AppState()
    
    var body: some Scene {
        WindowGroup {
            if !appState.showApp {
                MaskedHomePageView()
                    .environmentObject(appState).onAppear{
                        print("MaskedHomePageView appeared")
                    }
            }
            else{
                TabView {
                    JournalView()
                        .tabItem{
                        Label("Journal", systemImage: "book")
                    }
                }
                .onAppear{
                    print("JournalView appeared")
                    
                }
            }
        }
    }
}
