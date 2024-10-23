//
//  WeatherDTO.swift
//  weatherforecast
//
//  Created by Gabriel Araújo Lima on 22/10/24.
//

import Foundation

struct WeatherDTO: Decodable, Identifiable {
    var id: String { data }
    
    let data: String
    let condicao: String
    let min: Int
    let max: Int
    let indice_uv: Int
    let condicao_desc: String
}
