//
//  MaskedHomePageView.swift
//  VAWGApplication
//
//  Created by Ryan Salisbury on 20/10/2024.
//

import Foundation
import SwiftUI

// Home page view where masked application is handled

struct MaskedHomePageView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("MaskedHomePageViewTEST")
        }
        .padding()
    }
}

struct MaskedHomePageView_Previews: PreviewProvider {
    static var previews: some View {
        MaskedHomePageView()
    }
}
