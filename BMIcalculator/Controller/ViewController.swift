//
//  ViewController.swift
//  BMIcalculator
//
//  Created by rahul v on 7/3/26.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var unitSwitch: UISwitch!
    
    @IBOutlet weak var imperialLabel: UILabel!
    
    @IBOutlet weak var metricLabel: UILabel!
    
    @IBOutlet weak var heightUnits: UITextField!
    
    @IBOutlet weak var weightUnits: UITextField!
    
    @IBOutlet weak var errorLabel: UILabel!
    
    let bmiLogic = BmiLogic()
    var impBMI : Double = 0
    var metBMI : Double = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        imperialLabel.alpha = 1.0
        metricLabel.alpha = 0.2
        errorLabel.text = " "
    }

    @IBAction func CalculateBtn(_ sender: UIButton) {
        
        if unitSwitch.isOn {
            let validHeight = heightUnits.text ?? ""
            let validWeight = weightUnits.text ?? ""
            
            guard let imperialHeight = Double(validHeight), imperialHeight > 0, let imperialWeight = Double(validWeight), imperialWeight > 0.0 else {
                errorLabel.text = "Height and weight must be valid numbers"
                return
            }
            impBMI = bmiLogic.calcBmiImperial(imperialHeight, imperialWeight)
            errorLabel.text = " "
        }
        else {
            let validHeight = heightUnits.text ?? ""
            let validWeight = weightUnits.text ?? ""
            
            guard let metricHeight = Double(validHeight), metricHeight > 0, let metricWeight = Double(validWeight), metricWeight > 0.0 else {
                errorLabel.text = "Height and weight must be valid numbers"
                return
            }
            metBMI = bmiLogic.calcBmiMetric(metricHeight, metricWeight)
            errorLabel.text = " "
        }
        self.performSegue(withIdentifier: "toResult", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if(segue.identifier == "toResult") {
            let result = segue.destination as! ResultViewController
            let finalBMI = unitSwitch.isOn ? impBMI : metBMI
            result.bmiResult = finalBMI
            result.category = bmiLogic.getCategory(finalBMI)
        }
    }
    
    @IBAction func unitSwitch(_ sender: UISwitch) {
        if sender.isOn {
            metricLabel.alpha = 0.2
            imperialLabel.alpha = 1.0
            heightUnits.placeholder = "Inches"
            weightUnits.placeholder = "Pounds"
            heightUnits.text = ""
            weightUnits.text = ""

        } else {
            metricLabel.alpha = 1.0
            imperialLabel.alpha = 0.2
            heightUnits.placeholder = "Centimeters"
            weightUnits.placeholder = "Kilograms"
            heightUnits.text = ""
            weightUnits.text = ""

        }
    }
    
    @IBAction func clearHeight(_ sender: UIButton) {
        heightUnits.text = ""
    }
    
    @IBAction func clearWeight(_ sender: UIButton) {
        weightUnits.text = ""
    }
    
    
}

