//
//  CalcLogic.swift
//  BMIcalculator
//
//  Created by rahul v on 7/3/26.
//

import UIKit

struct BmiLogic {
    
    func calcBmiImperial (_ height: Int, _ weight: Double) -> Double {
        let heightSquared = height * height
        return (weight * 703) / Double (heightSquared)
    }
    
    func calcBmiMetric (_ height: Int, _ weight: Double) -> Double {
        let heightConversion = Double (height) / 100
        return weight / (heightConversion * heightConversion)
    }
}
