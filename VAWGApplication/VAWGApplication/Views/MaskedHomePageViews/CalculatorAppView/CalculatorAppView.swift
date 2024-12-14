//
//  CalculatorAppView.swift
//  VAWGApplication
//
//  Created by Ryan Salisbury on 13/12/2024.
//
import SwiftUI

struct CalculatorAppView: View {
    @EnvironmentObject var appState: AppState
    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            VStack {
                Text("CalculatorAppView").font(.largeTitle)
                Spacer()
            }
            FabIcon().environmentObject(appState)
        }
    }
}

struct CalculatorAppViewPreview: PreviewProvider {
    static var previews: some View {
        CalculatorAppView().environmentObject(AppState())
    }
}
