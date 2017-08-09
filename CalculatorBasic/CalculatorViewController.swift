//
//  ViewController.swift
//  CalculatorBasic
//
//  Created by Claudio Salas on 8/1/17.
//  Copyright © 2017 Claudio Salas. All rights reserved.
//

import UIKit

class CalculatorViewController: UIViewController {
    
    private var calculator = Calculator()
    
    var userIsInTheMiddleOfTyping = false
    
    var displayValue: Double {
        get {
            return Double(display.text!)!
        }
        set {
            display.text = String(newValue)
        }
    }
    
    @IBOutlet weak var display: UILabel!
    
    @IBAction func buttonTouched(_ sender: UIButton) {
        let digit = sender.currentTitle!
        
        if userIsInTheMiddleOfTyping {
            let currentTextInDisplay = display.text!
            display.text = currentTextInDisplay + digit
        } else {
            display.text = digit
            userIsInTheMiddleOfTyping = true
        }
    }
    
    @IBAction func performOperation(_ sender: UIButton) {
        if userIsInTheMiddleOfTyping {
            calculator.setOperand(displayValue)
            userIsInTheMiddleOfTyping = false
        }
    
        if let symbol  = sender.currentTitle {
            calculator.performOperation(symbol)
        }
    
        if let result = calculator.result {
            displayValue = result
        }
    }
}

