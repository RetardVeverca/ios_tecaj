//
//  Converter.swift
//  CurrencyConverter
//
//  Created by Martin Mikeln on 26/10/15.
//  Copyright © 2015 Martin Mikeln. All rights reserved.
//

import Foundation

class Converter {
    
    func convert (value: Double, _ startCurrency: Currency, _ targetCurrency: Currency) -> (Double,Double){
        
        return (value * (startCurrency.conversion_rate/targetCurrency.conversion_rate),targetCurrency.conversion_rate * startCurrency.conversion_rate)
        
    }
    
}