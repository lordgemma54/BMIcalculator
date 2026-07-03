//
//  ViewController.swift
//  BMIcalculator
//
//  Created by rahul v on 7/3/26.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imperialLabel: UILabel!
    
    @IBOutlet weak var metricLabel: UILabel!
    
    @IBOutlet weak var heightUnits: UITextField!
    
    @IBOutlet weak var weightUnits: UITextField!
    
    @IBOutlet weak var errorLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        imperialLabel.alpha = 1.0
        metricLabel.alpha = 0.2
    }

    @IBAction func CalculateBtn(_ sender: Any) {
        self.performSegue(withIdentifier: "toResult", sender: self)
    }
    
    @IBAction func unitSwitch(_ sender: UISwitch) {
        if sender.isOn {
            heightUnits.placeholder = "Inches"
            weightUnits.placeholder = "Pounds"
            
        } else {
            metricLabel.alpha = 1.0
            imperialLabel.alpha = 0.2
            heightUnits.placeholder = "Centimeters"
            weightUnits.placeholder = "Kilograms"
        }
    }
    
    @IBAction func clearHeight(_ sender: UIButton) {
        heightUnits.text = ""
    }
    
    @IBAction func clearWeight(_ sender: UIButton) {
        weightUnits.text = ""
    }
    
    
}

