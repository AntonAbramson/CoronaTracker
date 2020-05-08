//
//  SearchView.swift
//  CoronaTracker
//
//  Created by Kirk Svensson on 5/5/20.
//  Copyright © 2020 Anton Abramson. All rights reserved.
//

import SwiftUI

struct SearchView: View {
    
    @Binding var searchText: String
    
    var body: some View {
        
        HStack{
            TextField("Country...", text: $searchText)
            .padding()
        }
    .frame(height: 50)
    .background(Color("cardBackgroundGray"))
    }
}
