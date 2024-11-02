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
    
    func buttonAction(){
        appState.showApp = true
    }
    
    var body: some View {
        Button(action: buttonAction){
            Label("Sign in", systemImage:"arrow.up")
        }
        .buttonStyle(.borderedProminent).padding()
        
    }
}
