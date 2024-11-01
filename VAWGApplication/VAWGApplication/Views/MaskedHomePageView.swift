//
//  MaskedHomePageView.swift
//  VAWGApplication
//
//  Created by Ryan Salisbury on 20/10/2024.
//

import Foundation
import SwiftUI

// Home page view where masked application is handled

struct MaskedHomePageView: View {
    @EnvironmentObject var appState:AppState
    func buttonAction(){
        print("Button is clicked")
        appState.showApp = true
    }
    
    var body: some View {
        VStack {
            Button(action: buttonAction) {
                Label("Sign In", systemImage: "arrow.up")
            }
            Text("MASKED PAGE HERE")
        }
        .padding()
        
    }
}

struct MaskedHomePageView_Previews: PreviewProvider {
    static var previews: some View {
        MaskedHomePageView().environmentObject(AppState())
    }
}
