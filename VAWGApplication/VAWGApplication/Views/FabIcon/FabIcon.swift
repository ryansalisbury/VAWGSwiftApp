//
//  FabIcon.swift
//  VAWGApplication
//
//  Created by Ryan Salisbury on 12/12/2024.
//
import SwiftUI

struct FabIcon: View {
    @State private var isFabOpen = true

    func toggleFab() {
        isFabOpen.toggle()
    }

    var body: some View {
        VStack {
            if isFabOpen {
                Button {
                    // action
                } label: {
                    Image(systemName: "numbers.rectangle")
                        .font(.title.weight(.semibold))
                        .padding().background(Color.yellow)
                        .foregroundColor(.white).clipShape(.circle).shadow(radius: 4, x: 0, y: 4)
                }
                Button {
                    // action
                } label: {
                    Image(systemName: "cloud.rainbow.crop.fill")
                        .font(.title.weight(.semibold))
                        .padding().background(Color.yellow)
                        .foregroundColor(.white).clipShape(.circle).shadow(radius: 4, x: 0, y: 4)
                }
            }
            Button {
                toggleFab()
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
}
