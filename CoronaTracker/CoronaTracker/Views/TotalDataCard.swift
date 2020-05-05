//
//  TotalDataCard.swift
//  CoronaTracker
//
//  Created by Kirk Svensson on 5/5/20.
//  Copyright © 2020 Anton Abramson. All rights reserved.
//

import SwiftUI

struct TotalDataCard: View {
    
    var number: String = "Error"
    var name: String = "Confirmed"
    var color: Color = .primary
    
    
    var body: some View {
        
        GeometryReader { geometry in
            
            VStack {
                
                Text(self.number)
                    .font(.subheadline)
                    .padding(5)
                    .foregroundColor(self.color)
            
                Text(self.name)
                    .font(.body)
                    .padding(5)
                    .foregroundColor(self.color)
                
                
            }// End of VStack
                .frame(width: geometry.size.width, height: 80.0, alignment: .center)
                .background(Color("cardBackgroundGray"))
                .cornerRadius(8.0)
        } // End of Geometry
    }
        
}

struct TotalDataCard_Previews: PreviewProvider {
    static var previews: some View {
        TotalDataCard()
    }
}
