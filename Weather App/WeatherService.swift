//
//  WeatherService.swift
//  Weather App
//
//  Created by Londell Aberdeen on 1/5/24.
//

import Foundation
import Alamofire
struct WeatherService {
    
    func getCurrentWeather(zip: Int) async -> DataResponse<GetCurrentWeatherResponse, AFError> {
        let params : [String : Any] = ["key":"bbac8b6414ba466fad232844240601","q":zip]
        let response = await AF.request( "https://api.weatherapi.com/v1/current.json",parameters: params as? Parameters, interceptor: .retryPolicy)
        // Caching customization.
            .cacheResponse(using: .cache)
        // Redirect customization.
            .redirect(using: .follow)
        // Validate response code and Content-Type.
            .validate()
        // Produce a cURL command for the request.
          //  .cURLDescription { description in
               // print(description)
         //   }
        // Automatic Decodable support with background parsing.
            .serializingDecodable(GetCurrentWeatherResponse.self)
        // Await the full response with metrics and a parsed body.
            .response
        // Detailed response description for easy debugging.
        debugPrint(response)
        
        return response
    }
    
    
}

