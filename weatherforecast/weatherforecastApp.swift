//
//  weatherforecastApp.swift
//  weatherforecast
//
//  Created by Gabriel Araújo Lima on 22/10/24.
//

import SwiftUI

@main
struct weatherforecastApp: App {
    var body: some Scene {
        WindowGroup {
            LocationsView(viewModel: LocationsViewModel())
        }
    }
}
