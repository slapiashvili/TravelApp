//
//  DestinationButtonStyle.swift
//  TravelApp
//
//  Created by Salome Lapiashvili on 20.12.23.
//

import SwiftUI

struct DestinationButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding()
            .background(Color("travelAppDarkGreen"))
            .foregroundColor(.white)
            .cornerRadius(8)
            .frame(width: 120, height: 100)
    }
}
