//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Serena  on 1/18/24.
//  Copyright © 2024 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain{
    
    var bmi: BMI?
    
    mutating func calculateBMI(height: Float, weight: Float){
        let bmiValue =  weight / (height * height)
        
        let lightBlue = #colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1)
        let lightGreen = #colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1)
        let lightRed = #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1)
        
        if bmiValue < 18.5{
            bmi = BMI(value: bmiValue, advice: "Eat more pies", color: lightBlue )
        }
        else if bmiValue < 24.9{
            bmi = BMI(value: bmiValue, advice: "Fit as a fiddle!", color: lightGreen)
        }
        else{
            bmi = BMI(value: bmiValue, advice: "Eat less pies!", color: lightRed)
        }
    }
    
    func getBMIValue() -> String{
        let bmiToOneDecimalPlace = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiToOneDecimalPlace
    }
    
    func getAdvice() -> String{
        return bmi?.advice ?? "No advice"
    }
    
    func getColor() -> UIColor{
        return bmi?.color ?? #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
    }
}
