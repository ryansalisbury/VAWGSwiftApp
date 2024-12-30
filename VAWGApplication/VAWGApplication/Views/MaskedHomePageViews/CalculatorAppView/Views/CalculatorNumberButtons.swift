//
//  CalculatorNumberButtons.swift
//  VAWGApplication
//
//  Created by Ryan Salisbury on 27/12/2024.
//

import SwiftUI

struct CalculatorNumberButtons: View {

    private let calculatorButtons = [["7", "8", "9", "*"],
                                     ["4", "5", "6", "-"],
                                     ["1", "2", "3", "+"],
                                     ["0", ".", "=", "/"],
                                     ["C"]]
    let columns = [GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible())]
    @ObservedObject var calc: CalculatorController
    var body: some View {
        LazyVGrid(columns: columns) {
            ForEach(calculatorButtons, id: \.self) {row in
                    ForEach(row, id: \.self) { button in
                        Button {
                            // action
                            print("button clicked: ", button)
                            calc.buttonClicked(button)
                        } label: {
                            Text("\(button)").frame(width: 70, height: 70)
                                .foregroundColor(.black)
                                .background(.yellow)
                                .clipShape(.circle)
                                .shadow(radius: 4, x: 0, y: 4)
                    }
                }
            }
        }

    }
}
