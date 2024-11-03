//
//  ContentView.swift
//  VAWGApplication
//
//  Created by Ryan Salisbury on 20/10/2024.
//
import Foundation
import SwiftUI

// this is the quivalent of react component dec
struct JournalView: View {
    // State management and logic goes in here
    @State var journalEntry: String = ""
    @FocusState private var journalTextIsFocused: Bool

    // this is what is 'rendered'
    var body: some View {
        VStack {
            TextField(
                "TEST TEXT FIELD",
                text: $journalEntry
            )
            .focused($journalTextIsFocused).padding().textFieldStyle(RoundedBorderTextFieldStyle()).onSubmit {
                print($journalEntry)
            }

            Text("Jounral Entry above")
        }
        .padding()
    }
}

// this is purely for viewing purposes
struct JournalView_Previews: PreviewProvider {
    static var previews: some View {
        JournalView()
    }
}
