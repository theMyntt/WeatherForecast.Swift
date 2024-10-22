//
//  LocationsView.swift
//  weatherforecast
//
//  Created by Gabriel Araújo Lima on 22/10/24.
//

import SwiftUI

struct LocationsView: View {
    @StateObject private var viewModel = LocationsViewModel()
    
    init() {
        viewModel.fetchAllLocations()
    }
    
    var body: some View {
        List {
            ForEach(viewModel.items) { item in
                HStack {
                    Text(item.nome)
                }
            }
        }
    }
}

struct LocationsView_Previews: PreviewProvider {
    static var previews: some View {
        LocationsView()
    }
}
