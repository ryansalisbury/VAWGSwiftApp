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
    @EnvironmentObject var appState: AppState

    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [.blue, .white]),
                           startPoint: .topLeading, endPoint: .bottomTrailing).edgesIgnoringSafeArea(.all)
            VStack(spacing: 10) {
                LocationText()
                VStack(spacing: 10) {
                    WeatherImage()
                    TemperatureText()
                    AppStateButton()
                }
            }
            .padding()
            Spacer()
        }
    }
}

struct MaskedHomePageView_Previews: PreviewProvider {
    static var previews: some View {
        MaskedHomePageView().environmentObject(AppState())
    }
}
