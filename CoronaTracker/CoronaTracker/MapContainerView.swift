//
//  MapContainerView.swift
//  CoronaTracker
//
//  Created by Kirk Svensson on 5/8/20.
//  Copyright © 2020 Anton Abramson. All rights reserved.
//

import SwiftUI

struct MapContainerView: View {
    
    @ObservedObject var covidFetch = CovidFetchRequest()
    
    var body: some View {
        MapView(countryData: $covidFetch.allCountries)
        }
}

struct MapContainerView_Previews: PreviewProvider {
    static var previews: some View {
        MapContainerView()
    }
}
