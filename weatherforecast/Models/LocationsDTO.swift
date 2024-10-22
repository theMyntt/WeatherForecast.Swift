//
//  LocationsDTO.swift
//  weatherforecast
//
//  Created by Gabriel Araújo Lima on 22/10/24.
//

import Foundation

struct LocationsDTO: Codable, Identifiable {
    let nome: String
    let estado: String
    let id: Int
}
