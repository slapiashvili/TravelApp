//
//  SubDetails.swift
//  TravelApp
//
//  Created by Salome Lapiashvili on 14.12.23.
//

import SwiftUI

struct SubDetailView: View {
    var title: String
    var info: String

    var body: some View {
        VStack {
            Spacer()
            Image(title.replacingOccurrences(of: " ", with: "").lowercased())
                .resizable()
                .scaledToFit()
                .cornerRadius(10)

            Text(info)
                .padding()

            Spacer()

            NavigationLink(destination: MainView(viewModel: TravelViewModel())) {
                Text("Go to Main Screen")
                    .foregroundColor(Color.white)
            }
            .padding()
        }
        .navigationBarTitle(title)
        .background(Color("travelAppLightGreen"))
        .ignoresSafeArea() 
    }
}

