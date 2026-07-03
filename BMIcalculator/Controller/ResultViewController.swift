//
//  ResultViewController.swift
//  BMIcalculator
//
//  Created by rahul v on 7/3/26.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var resultLabel: UILabel!
    
    @IBOutlet weak var categoryLabel: UILabel!
    
    var bmiResult : Double = 0

    var category : String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        resultLabel.text = String(format: "%.2f", bmiResult)
        resultLabel.isHidden = false
        
        if bmiResult <= 18.5 || bmiResult <= 18.5 {
            category = "You are underweight"
        } else if bmiResult > 18.5 && bmiResult <= 24.9 || bmiResult > 18.5 && bmiResult <= 24.9  {
            category = "You are in the normal range"
        } else if bmiResult > 24.9 && bmiResult <= 29.9 || bmiResult > 24.9 && bmiResult <= 29.9{
            category = "You are overweight"
        } else {
            category = "You are obese"
        }

        categoryLabel.text = "\(category)"
        categoryLabel.isHidden = false
    }
    
   

    @IBAction func BackBtn(_ sender: Any) {
        self.performSegue(withIdentifier: "toHome", sender: self)
    }

}
