//
//  AppStateButton.swift
//  VAWGApplication
//
//  Created by Ryan Salisbury on 02/11/2024.
//

import Foundation
import SwiftUI

struct AppStateButton: View {
    @EnvironmentObject var appState: AppState

    func buttonAction() {
        appState.showApp = true
    }

    var body: some View {
        Button(action: buttonAction) {
            Label("Masked Button", systemImage: "arrow.up")
        }
        .buttonStyle(.borderedProminent).padding()
    }
}

struct AppStateButton_Previews: PreviewProvider {
    static var previews: some View {
        AppStateButton().environmentObject(AppState())
    }
}
