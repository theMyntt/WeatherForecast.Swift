//
//  ForecastView.swift
//  weatherforecast
//
//  Created by Gabriel Araújo Lima on 22/10/24.
//

import SwiftUI

struct ForecastView: View {
    @ObservedObject var viewModel: ForecastViewModel
    
    init(viewModel: ForecastViewModel) {
        self.viewModel = viewModel
    }
    
    var body: some View {
        VStack {
            if let forecast = viewModel.forecast {
                Text("Cidade: \(forecast.cidade)")
            } else {
                Text("Carregando...")
            }
        }
        .onAppear {
            viewModel.fetchForecast()
        }
    }
}

struct ForecastView_Previews: PreviewProvider {
    static var previews: some View {
        ForecastView(viewModel: ForecastViewModel(cityCode: nil))
    }
}
