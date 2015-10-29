//
//  ViewController.swift
//  CurrencyConverter
//
//  Created by Martin Mikeln on 26/10/15.
//  Copyright © 2015 Martin Mikeln. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    var currency_start = Currency("EUR", 1.0927)
    var currency = Currency()
    
    
    
    @IBOutlet weak var input_button: UITextField!
    @IBOutlet weak var usd_button: UIButton!
    @IBOutlet weak var jpy_button: UIButton!
    @IBOutlet weak var result: UILabel!
    
    

    @IBAction func JPY(sender: UIButton) {
        
        currency = Currency("JPY", 0.0082)
        
        usd_button.selected = false
        jpy_button.selected = true
        
    }
    @IBAction func USD(sender: UIButton) {
        
        currency = Currency()
        
        usd_button.selected = true
        jpy_button.selected = false
        
        
    }
    @IBAction func convert_button(sender: UIButton) {
        
        let convert = Converter()
        
        if let input_value = Double(input_button.text!){
            
            let (converted,_) = convert.convert(input_value,currency_start,currency)
            
            result.text = "\(round(converted*100)/100)"
            
        
        }
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

