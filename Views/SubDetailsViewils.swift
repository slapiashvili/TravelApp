//
//  SubDetails.swift
//  TravelApp
//
//  Created by Salome Lapiashvili on 14.12.23.
//

import SwiftUI


struct SubDetailView: View {
    //MARK: - properties
    var title: String
    var info: String
    // MARK: - Private Views
    private var imageView: some View {
        Image(title.replacingOccurrences(of: " ", with: "").lowercased())
            .resizable()
            .scaledToFit()
            .cornerRadius(10)
    }

    private var infoView: some View {
        Text(info)
            .padding()
    }

    private var goToMainScreenButton: some View {
        NavigationLink(destination: MainView(viewModel: TravelViewModel())) {
            Text("Go to Main Screen")
                .foregroundColor(Color.white)
                .padding()
        }
    }
//MARK: - body
    var body: some View {
        VStack {
            Spacer()
            imageView
            infoView
            Spacer()
            goToMainScreenButton
        }
        .navigationBarTitle(title)
        .background(Color("travelAppLightGreen"))
        .ignoresSafeArea()
    }
}


