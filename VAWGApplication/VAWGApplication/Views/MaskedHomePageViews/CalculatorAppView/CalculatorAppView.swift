//
//  CalculatorAppView.swift
//  VAWGApplication
//
//  Created by Ryan Salisbury on 13/12/2024.
//
import SwiftUI

struct CalculatorAppView: View {
    @EnvironmentObject var appState: AppState
    @StateObject var calcController = CalculatorController()
    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            Color.black.ignoresSafeArea()
            VStack(alignment: .leading, spacing: 20) {
                CalculationBar(calc: calcController).padding(.bottom)
                CalculatorNumberButtons(calc: calcController).environmentObject(AppState())
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
