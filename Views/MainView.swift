//
//  MainView.swift
//  TravelApp
//
//  Created by Salome Lapiashvili on 14.12.23.
//

import SwiftUI

struct MainView: View {
    @ObservedObject var viewModel: TravelViewModel
    @State private var isShowingAlert = false
    @State private var alertMessage = ""

    var body: some View {
        NavigationView {
            VStack {
                Text("Travel Destinations")
                    .font(.title)
                    .foregroundColor(Color("travelAppDarkGreen"))
                    .padding(.top, 16)

                List(viewModel.destinations, id: \.name) { destination in
                    NavigationLink(destination: DestinationDetailsView(destination: destination)) {
                        Text(destination.name)
                            .padding()
                            .background(Color("travelAppLightGreen"))
                            .cornerRadius(10)
                    }
                    .listRowBackground(Color("travelAppLightGreen"))
                }
                
                Spacer()

                HStack {
                    Button("Travel Tips") {
                        let tip = viewModel.randomTravelTip()
                        showAlert(message: tip)
                    }
                    .padding()
                    .background(Color("travelAppLightGreen"))
                    .cornerRadius(10)

                }
            }

            .font(.title)
            .foregroundColor(Color("travelAppDarkGreen"))
            .alert(isPresented: $isShowingAlert) {
                Alert(title: Text("Travel Tip"), message: Text(alertMessage), dismissButton: .default(Text("Got it!")))
            }
            .background(Color("travelAppLightGreen"))
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

#Preview {
    MainView_Previews() as! any View
}

