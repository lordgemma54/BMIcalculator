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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func CalculateBtn(_ sender: Any) {
        self.performSegue(withIdentifier: "toResult", sender: self)
    }
    
    @IBAction func unitSwitch(_ sender: UISwitch) {
        if sender.isOn {
            imperialLabel.alpha = 1.0
            metricLabel.alpha = 0.2
        } else {
            metricLabel.alpha = 1.0
            imperialLabel.alpha = 0.2
        }
    }
}

