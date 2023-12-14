//
//  DestinationDetailsView.swift
//  TravelApp
//
//  Created by Salome Lapiashvili on 14.12.23.
//

import SwiftUI

struct DestinationDetailsView: View {
    var destination: TravelDestination

    var body: some View {
        VStack {
            Image(destination.imageName)
                .resizable()
                .scaledToFit()
                .frame(height: 200)

            Text(destination.description)
                .padding()
        } 
        

        HStack (spacing: 2) {
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
        .navigationBarTitle(destination.name)
        .background(Color("travelAppLightGreen"))
        .ignoresSafeArea()
    }
}

                         

