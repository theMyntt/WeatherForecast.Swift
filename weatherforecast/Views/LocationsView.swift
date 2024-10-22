//
//  LocationsView.swift
//  weatherforecast
//
//  Created by Gabriel Araújo Lima on 22/10/24.
//

import SwiftUI

struct LocationsView: View {
    @ObservedObject var viewModel: LocationsViewModel
    
    init(viewModel: LocationsViewModel) {
        self.viewModel = viewModel
        self.viewModel.fetchAllLocations()
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
        LocationsView(viewModel: LocationsViewModel())
    }
}
