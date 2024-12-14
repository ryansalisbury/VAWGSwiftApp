//
//  AppState.swift
//  VAWGApplication
//
//  Created by Ryan Salisbury on 01/11/2024.
//

import Foundation

public class AppState: ObservableObject {
    @Published var showApp: Bool = false
    @Published var weatherApp: Bool = false
    @Published var calculatorApp: Bool = true
}
