//
//  WeatherImage.swift
//  VAWGApplication
//
//  Created by Ryan Salisbury on 17/11/2024.
//
import SwiftUI
import Foundation

struct WeatherImage: View {

    var body: some View {
        Image(systemName: "cloud.sun.fill")
            .renderingMode(.original)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 180, height: 180)
    }
}
