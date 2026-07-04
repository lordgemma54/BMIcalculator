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

        categoryLabel.text = "\(category)"
        categoryLabel.isHidden = false
    }
    
   

    @IBAction func BackBtn(_ sender: Any) {
        self.performSegue(withIdentifier: "toHome", sender: self)
    }

}
