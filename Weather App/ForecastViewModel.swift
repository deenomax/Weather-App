//
//  ForecastViewModel.swift
//  Weather App
//
//  Created by Londell Aberdeen on 1/5/24.
//

import Foundation

@MainActor
class ForecastViewModel: ObservableObject {
    let weatherService = WeatherService()
    @Published var temp: GetCurrentWeatherResponse?
    
    func fetchCurrentTemp() async throws {
        let response = await weatherService.getCurrentWeather(zip: 78741)
        
        temp = response.data as? GetCurrentWeatherResponse
        
    }
}
