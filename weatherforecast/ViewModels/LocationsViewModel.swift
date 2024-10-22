//
//  LocationsViewModel.swift
//  weatherforecast
//
//  Created by Gabriel Araújo Lima on 22/10/24.
//

import Foundation

class LocationsViewModel: ObservableObject {
    @Published var items: [LocationsDTO] = []
    
    var service: LocationsService
    
    init() {
        service = LocationsService()
    }
    
    func fetchAllLocations() {
        service.fetchAllLocationsAsync { locations, errors in
            if let locations = locations {
                self.items = locations
            }
        }
    }
}
