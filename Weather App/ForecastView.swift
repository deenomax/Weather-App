//
//  ForecastView.swift
//  Weather App
//
//  Created by Londell Aberdeen on 1/5/24.
//

import SwiftUI

struct ForecastView: View {
    @StateObject var forecastViewModel = ForecastViewModel()
    var body: some View {
        HStack {
            Image(systemName: "sun.max")
                .resizable()
                .frame(width: 100, height: 100)
            
            Text(String(forecastViewModel.temp?.current.tempF ?? "error"))
                .font(.system(size: 60))
        }.task {
            
            do {
                try await forecastViewModel.fetchCurrentTemp()
            } catch {
                print(error) // you'd presumably do something more meaningful with the error, e.g. update the UI ...
            }
        }
    }
}

struct ForecastView_Previews: PreviewProvider {
    static var previews: some View {
        ForecastView()
    }
}
