//
//  ForecastViewModel.swift
//  weatherforecast
//
//  Created by Gabriel Araújo Lima on 22/10/24.
//

import Foundation

class ForecastViewModel: ObservableObject {
    @Published var forecast: ForecastDTO?
    
    private var service: ForecastService
    private var cityCode: Int?
    
    init(cityCode: Int?) {
        self.service = ForecastService()
        self.cityCode = cityCode
    }
    
    func fetchForecast() {
        service.fetchWeatherForecast(cityCode: cityCode) { response, error in
            if let response = response {
                DispatchQueue.main.async {
                    self.forecast = response
                }
            }
        }
    }
}
