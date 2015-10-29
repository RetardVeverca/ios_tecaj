//
//  Currency.swift
//  CurrencyConverter
//
//  Created by Martin Mikeln on 26/10/15.
//  Copyright © 2015 Martin Mikeln. All rights reserved.
//

import Foundation


class Currency {
    
    var type: String
    var conversion_rate: Double
    
    init(_ type: String = "USD", _ conversion_rate: Double = 1.0){
        
        self.type = type
        self.conversion_rate = conversion_rate
    }
    
}