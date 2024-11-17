//
//  LocationText.swift
//  VAWGApplication
//
//  Created by Ryan Salisbury on 17/11/2024.
//
import SwiftUI
import Foundation

struct LocationText: View {
    @StateObject private var locationManger = LocationManager()

    var body: some View {
        VStack {
            if let coordinate = locationManger.lastKnowLocation {
                Text("Latitude: \(coordinate.latitude)").font(.system(size: 32, weight: .medium, design: .default))
                    .foregroundColor(.white)

                Text("Longitude: \(coordinate.longitude)").font(.system(size: 32, weight: .medium, design: .default))
                    .foregroundColor(.white)
            }
            Button("Get Location") {
                print("Button is pressed")
                locationManger.checkLocationAuthorisation()
            }.buttonStyle(.borderedProminent)
                .padding()
            Text("Current Location").font(.system(size: 32, weight: .medium, design: .default))
                .foregroundColor(.white).padding()
        }
    }
}
