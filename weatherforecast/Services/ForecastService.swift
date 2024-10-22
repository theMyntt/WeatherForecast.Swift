//
//  ForecastService.swift
//  weatherforecast
//
//  Created by Gabriel Araújo Lima on 22/10/24.
//

import Foundation

class ForecastService {
    func fetchWeatherForecast(cityCode: Int?, completion: @escaping (ForecastDTO?, Error?) -> Void) {
        var code: Int
        
        if let cityCode = cityCode {
            code = cityCode
        } else {
            code = 442
        }
        
        let url = URL(string: "https://brasilapi.com.br/api/cptec/v1/clima/previsao/\(code)")!
        
        let task = URLSession.shared.dataTask(with: url) { data, response, error in
            
            if let error = error {
                completion(nil, error)
                return
            }
            
            guard let data = data else {
                completion(nil, NSError(domain: "", code: -1, userInfo: [NSLocalizedDescriptionKey: "Dats not found"]))
                return
            }
            
            let decoder = JSONDecoder()
            
            do {
                let forecast = try decoder.decode(ForecastDTO.self, from: data)
                completion(forecast, nil)
            } catch {
                completion(nil, error)
            }
        }
        
        task.resume()
    }
}
