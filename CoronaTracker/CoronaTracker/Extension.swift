//
//  Extension.swift
//  CoronaTracker
//
//  Created by Kirk Svensson on 5/4/20.
//  Copyright © 2020 Anton Abramson. All rights reserved.
//

import Foundation
extension Int{
    
    func formatNumber() -> String {
        let formatter = NumberFormatter()
        formatter.groupingSeparator = ","
        formatter.numberStyle = .decimal
        return formatter.string(from: NSNumber(value: self))!
    }
}

extension Int64{
    
    func formatNumber() -> String {
        let formatter = NumberFormatter()
        formatter.groupingSeparator = ","
        formatter.numberStyle = .decimal
        return formatter.string(from: NSNumber(value: self))!
    }
}



