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

    func getLocation() {
        print("getLocation is called")
        locationManger.checkLocationAuthorisation()
    }

    var body: some View {
        VStack {
            if let coordinate = locationManger.lastKnowLocation {
                Text("Latitude: \(coordinate.latitude)").font(.system(size: 32, weight: .medium, design: .default))
                    .foregroundColor(.white)

                Text("Longitude: \(coordinate.longitude)").font(.system(size: 32, weight: .medium, design: .default))
                    .foregroundColor(.white)
            }
            Button(action: getLocation) {
                Label("getLocation Button", systemImage: "arrow.up")
            }.buttonStyle(.borderedProminent)
                .padding()
            Text("Current Location").font(.system(size: 32, weight: .medium, design: .default))
                .foregroundColor(.white).padding()
        }
    }
}
