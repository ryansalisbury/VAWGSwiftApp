//
//  CalculatorNumberButtons.swift
//  VAWGApplication
//
//  Created by Ryan Salisbury on 14/12/2024.
//

import SwiftUI

struct CalculatorNumberButtons: View {

    private let calculatorButtons = [["7", "8", "9", "x"],
                                     ["4", "5", "6", "-"],
                                     ["1", "2", "3", "+"],
                                     ["0", ".", "=", "/"]]
    let columns = [GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible())]
    var body: some View {
        Text("CalculatorNumberButtons").font(.largeTitle)
        LazyVGrid(columns: columns) {
            ForEach(calculatorButtons, id: \.self) {row in
                    //                Text("\($0)")
                    ForEach(row, id: \.self) { number in
                        Button {
                            // action
                        } label: {
                            Text("\(number)").frame(width: 70, height: 70)
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
