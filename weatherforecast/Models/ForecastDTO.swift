//
//  ForecastDTO.swift
//  weatherforecast
//
//  Created by Gabriel Araújo Lima on 22/10/24.
//

import Foundation

struct ForecastDTO: Decodable, Identifiable {
    var id: Int
    
    let cidade: String
    let estado: String
    let atualizado_em: String
    let clima: [WeatherDTO]
}
