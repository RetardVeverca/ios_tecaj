//iOS Smart Ninja Course: Lesson2
//Author: Martin Mikeln

import Foundation

class Currency {
    
    var type: String
    var conversion_rate: Double
    
    init(_ type: String = "USD", _ conversion_rate: Double = 1.0){
        
        self.type = type
        self.conversion_rate = conversion_rate
    }

}

class Converter {
    
    func convert (value: Double, startCurrency: Currency, targetCurrency: Currency) -> (Double,Double){
        
        return (value * (startCurrency.conversion_rate/targetCurrency.conversion_rate),targetCurrency.conversion_rate * startCurrency.conversion_rate)
    
    }

}

let USD = Currency()

let EUR = Currency("EUR", 1.13)

let converter = Converter()

let value = 1.0

let (converted,rate) = converter.convert(value, startCurrency: EUR, targetCurrency: USD)

let format = String(format: "%.2f", converted)

print ("\(value) EUR in USD: \(format) at exchange rate: \(rate) EUR")