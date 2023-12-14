//
//  TravelAppApp.swift
//  TravelApp
//
//  Created by Salome Lapiashvili on 14.12.23.
//

import SwiftUI

@main
struct TravelAppApp: App {
    var body: some Scene {
        WindowGroup {
            MainView(viewModel: TravelViewModel())
        }
    }
}
