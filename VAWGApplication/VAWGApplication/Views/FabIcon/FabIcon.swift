//
//  FabIcon.swift
//  VAWGApplication
//
//  Created by Ryan Salisbury on 12/12/2024.
//
import SwiftUI

struct FabIcon: View {
    @State private var isFabOpen = false
    @EnvironmentObject var appState: AppState
    /* ideally we would like to make this
     generic so we can push whatever actionButtons to the fab
     icon */
    var body: some View {
        VStack {
            if isFabOpen {
                if appState.calculatorApp {
                    WeatherAppButton()
                }
                if appState.weatherApp {
                    CalculatorAppButton()
                }
            }
            Button {
                withAnimation { isFabOpen.toggle() }
            } label: {
                Image(systemName: isFabOpen ? "x.circle" : "apple.image.playground")
                    .font(.title.weight(.semibold))
                    .padding()
                    .background(Color.orange)
                    .foregroundColor(.white)
                    .rotationEffect(.degrees(isFabOpen ? 0 : 90))
                    .clipShape(.circle).shadow(radius: 4, x: 0, y: 4)
            }
        }
    }

    // this is purely for viewing purposes
    struct FabIcon_Previews: PreviewProvider {
        static var previews: some View {
            FabIcon()
        }
    }
}
