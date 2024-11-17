//
//  TemperatureText.swift
//  VAWGApplication
//
//  Created by Ryan Salisbury on 08/11/2024.
//
import SwiftUI
import Foundation

struct TemperatureText: View {
    var body: some View {
        VStack {
            Text("35°C").font(.system(size: 70, weight: .medium, design: .default))
                .foregroundColor(.white)
        }
    }
}
