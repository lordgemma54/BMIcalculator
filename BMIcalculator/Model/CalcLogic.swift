//
//  CalcLogic.swift
//  BMIcalculator
//
//  Created by rahul v on 7/3/26.
//

import UIKit

struct BmiLogic {
    
    func calcBmiImperial (_ height: Double, _ weight: Double) -> Double {
        let heightSquared = height * height
        return (weight * 703) / Double (heightSquared)
    }
    
    func calcBmiMetric (_ height: Double, _ weight: Double) -> Double {
        let heightConversion = height / 100
        return weight / (heightConversion * heightConversion)
    }
    
    func getCategory(_ finalBMI: Double) -> String {
        switch finalBMI {
        case ..<18.5:
            return "You are underweight"
        case 18.5 ... 24.9:
            return "You are in the normal range"
        case 24.9 ... 29.9:
            return "You are overweight"
        default: return "You are obese"
        }
    }
    
 
}
