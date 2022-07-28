//
//  ViewController.swift
//  PreWork
//
//  Created by Pauleene Jordan on 7/27/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var twenty: UILabel!
    @IBOutlet weak var eighteen: UILabel!
    @IBOutlet weak var fifteen: UILabel!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var billAmountTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func calculateTip(_ sender: Any) {
        let bill = Double (billAmountTextField.text!) ?? 0
        // Get Total tip by multiplying tip * tipPercentage
        let tipPercentages = [0.15, 0.18, 0.2]
        let tip = bill *
        tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        let fifteenPercentage = bill * 0.15
        let eighteenPercentage = bill * 0.18
        let twentyPercentage = bill * 0.20
        // Updaet Tip Amount Label
        tipAmountLabel.text = String(format: "$%.2f", tip)
        // Update Total Amount
        totalLabel.text = String(format: "$%.2f", total)
        fifteen.text = String(format: "$%.2f", fifteenPercentage)
        eighteen.text = String(format: "$%.2f", eighteenPercentage)
        twenty.text = String(format: "$%.2f", twentyPercentage)
        
    }
    
}

