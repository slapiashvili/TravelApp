//
//  MainView.swift
//  TravelApp
//
//  Created by Salome Lapiashvili on 14.12.23.
//

import SwiftUI


struct MainView: View {
    //MARK: -properties
    @ObservedObject var viewModel: TravelViewModel
    @State private var isShowingAlert = false
    @State private var alertMessage = ""
    
    // MARK: - Private Views
    private var titleView: some View {
        Text("Travel Destinations")
            .font(.title)
            .foregroundColor(Color("travelAppDarkGreen"))
            .padding(.top, 16)
    }

    private var destinationListView: some View {
        List(viewModel.destinations, id: \.name) { destination in
            NavigationLink(destination: DestinationDetailsView(destination: destination)) {
                Text(destination.name)
                    .padding()
                    .background(Color("travelAppLightGreen"))
                    .cornerRadius(10)
            }
            .listRowBackground(Color("travelAppLightGreen"))
        }
        .background(Color("travelAppLightGreen"))
    }

    private var travelTipsButton: some View {
        Button("Travel Tips") {
            let tip = viewModel.randomTravelTip()
            showAlert(message: tip)
        }
        .padding()
        .background(Color("travelAppLightGreen"))
        .cornerRadius(10)
    }
    
    //MARK: - Body
    var body: some View {
        NavigationView {
            VStack {
                titleView
                destinationListView
                Spacer()
                HStack {
                    travelTipsButton
                }
            }
            .font(.title)
            .foregroundColor(Color("travelAppDarkGreen"))
            .background(Color("travelAppLightGreen"))
            .alert(isPresented: $isShowingAlert) {
                Alert(title: Text("Travel Tip"), message: Text(alertMessage), dismissButton: .default(Text("Got it!")))
            }
        }
    }

    private func showAlert(message: String) {
        alertMessage = message
        isShowingAlert = true
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        let viewModel = TravelViewModel()
        MainView(viewModel: viewModel)
    }
}




