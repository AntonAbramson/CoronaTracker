//
//  RecentView.swift
//  CoronaTracker
//
//  Created by Kirk Svensson on 5/4/20.
//  Copyright © 2020 Anton Abramson. All rights reserved.
//

import SwiftUI

struct RecentView: View {
    
    @ObservedObject var covidFetch = CovidFetchRequest()
    @State var searchText = ""

    var body: some View {
        
        NavigationView {
            
            VStack {
                
                TotalDataView(totalData: covidFetch.totalData)
                
                ListHeaderView()
                
                List {
                    
                    ForEach(covidFetch.allCountries.filter {
                        self.searchText.isEmpty ? true : $0.country.lowercased().contains(self.searchText.lowercased())
                    }, id: \.country) { countryData in
                        
                        
                        CountryDataRowView(countryData: countryData)
                    }
                }
                
            }//End of VStack
            
        }//End of Navigation
    }
}

struct RecentView_Previews: PreviewProvider {
    static var previews: some View {
        RecentView()
    }
}
