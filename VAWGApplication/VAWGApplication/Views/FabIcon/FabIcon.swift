//
//  FabIcon.swift
//  VAWGApplication
//
//  Created by Ryan Salisbury on 12/12/2024.
//
import SwiftUI

struct FabIcon: View {
    var body: some View {
        Button {
            // action
        } label: {
            Image(systemName: "apple.image.playground")
                .font(.title.weight(.semibold))
                    .padding().background(Color.orange)
                    .foregroundColor(.white).clipShape(.circle).shadow(radius: 4, x: 0, y: 4)
        }
    }
}

// this is purely for viewing purposes
struct FabIcon_Previews: PreviewProvider {
    static var previews: some View {
        FabIcon()
    }
}
