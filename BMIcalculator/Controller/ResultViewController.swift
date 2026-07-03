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
    
    let bmiResult : Double = 0
    let category : String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        resultLabel.text = "\(bmiResult)"
        categoryLabel.text = "\(category)"
    }
    

    @IBAction func BackBtn(_ sender: Any) {
        self.performSegue(withIdentifier: "toHome", sender: self)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
