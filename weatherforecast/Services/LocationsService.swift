//
//  LocationsService.swift
//  weatherforecast
//
//  Created by Gabriel Araújo Lima on 22/10/24.
//

import Foundation

class LocationsService {
    func fetchAllLocationsAsync(completion: @escaping ([LocationsDTO]?, Error?) -> Void) {
        let url = URL(string: "https://brasilapi.com.br/api/cptec/v1/cidade")!
        
        let task = URLSession.shared.dataTask(with: url) { data, response, error in
            if let error = error {
                completion(nil, error)
                return
            }
            
            guard let data = data else {
                completion(nil, NSError(domain: "", code: -1, userInfo: [NSLocalizedDescriptionKey: "Data not found"]))
                return
            }
            
            let decoder = JSONDecoder()
            
            do {
                let locations = try decoder.decode([LocationsDTO].self, from: data)
                completion(locations, nil)
            } catch {
                completion(nil, error)
            }
        }
        
        task.resume()
    }
}
