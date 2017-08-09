//
//  Calculator.swift
//  CalculatorBasic
//
//  Created by Claudio Salas on 8/1/17.
//  Copyright © 2017 Claudio Salas. All rights reserved.
//

import Foundation

struct Calculator {
    
    private var accumulator: Double?
    
    var result: Double? {
        get {
            return accumulator
        }
    }
    
    mutating func performOperation(_ symbol: String) {
        switch symbol {
        case "π" :
            accumulator = Double.pi
        case "√" :
            if let operand = accumulator {
                accumulator = sqrt(operand)
            }
        default:
            break
        }
    }
    
    mutating func setOperand(_ operand: Double) {
        accumulator = operand
    }
    
}
