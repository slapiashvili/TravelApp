//
//  DestinationDetailsView.swift
//  TravelApp
//
//  Created by Salome Lapiashvili on 14.12.23.
//

import SwiftUI


struct DestinationDetailsView: View {
    //MARK: - properties
    var destination: TravelDestination
    // MARK: - Private Views
    private var headerView: some View {
        VStack {
            Image(destination.imageName)
                .resizable()
                .scaledToFit()
                .frame(height: 200)

            Text(destination.description)
                .padding()
        }
    }

    private var subcategoriesView: some View {
        HStack(spacing: 2) {
            NavigationLink(destination: SubDetailView(title: "Transport", info: destination.transportInfo)) {
                Text("Transport")
            }
            .buttonStyle(DestinationButtonStyle())

            NavigationLink(destination: SubDetailView(title: "Must See", info: destination.mustSeeInfo)) {
                Text("Must See")
            }
            .buttonStyle(DestinationButtonStyle())

            NavigationLink(destination: SubDetailView(title: "Hotels", info: destination.hotelInfo)) {
                Text("Hotels")
            }
            .buttonStyle(DestinationButtonStyle())
        }
        .background(Color("travelAppLightGreen"))
    }
//MARK: - Body
    var body: some View {
        VStack {
            headerView
            subcategoriesView
        }
        .navigationBarTitle(destination.name)
        .background(Color("travelAppLightGreen"))
        .ignoresSafeArea()
    }
}


                         

