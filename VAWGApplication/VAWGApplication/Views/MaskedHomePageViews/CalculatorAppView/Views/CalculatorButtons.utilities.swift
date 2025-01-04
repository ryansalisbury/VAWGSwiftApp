//
//  CalculatorButtons.utilities.swift
//  VAWGApplication
//
//  Created by Ryan Salisbury on 04/01/2025.
//

import SwiftUI
import Foundation

func buttonContent(for value: String) -> some View {
    value == "<" ? AnyView(Image(systemName: "delete.left.fill")) : AnyView(Text(value))
}

extension View {
    func buttonStyle() -> some View {
        self
            .frame(width: 90, height: 90)
            .font(.system(size: 30, weight: .semibold))
            .foregroundColor(.black)
            .background(.gray)
            .clipShape(.circle)
            .shadow(radius: 4, x: 0, y: 4)
    }
}
