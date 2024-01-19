//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Serena  on 1/18/24.
//  Copyright © 2024 Angela Yu. All rights reserved.
//

import Foundation

struct CalculatorBrain{
    
    var bmi = Float(0.0)
    
    mutating func calculateBMI(height: Float, weight: Int){
        bmi =  Float(weight) / (height * height)
    }
    
    func getBMIValue() -> String{
        return String(format: "%.1f", bmi)
    }
    
}
