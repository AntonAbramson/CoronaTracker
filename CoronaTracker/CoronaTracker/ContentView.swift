//
//  ContentView.swift
//  CoronaTracker
//
//  Created by Kirk Svensson on 5/2/20.
//  Copyright © 2020 Anton Abramson. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    
    var body: some View {
        
        TabView {
            
            RecentView()
                .tabItem{
                    Tab(imageName: "chart.bar", text: "Recent")
            }
        .tag(0)
            
            
        //map
            
        }
    }
}


private struct Tab: View {
    
    let imageName: String
    let text: String
    
    var body: some View {
        VStack{
            Image(systemName: imageName)
            Text(text)
        }
    }
}
