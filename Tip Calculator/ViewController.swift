//
//  ViewController.swift
//  Tip Calculator
//
//  Created by Priyanka Balwadkar on 8/3/20.
//  Copyright © 2020 Codepath. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipPercentSlider: UISlider!
    @IBOutlet weak var tipPercentLabel: UILabel!
   
    @IBOutlet weak var tipAmountLabel: UILabel!
    
    @IBOutlet weak var totalBillLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func BillAmountChanged(_ sender: Any) {
        
        
        let billAmt = Double(billAmountTextField.text!) ?? 0
        let tipPercentage = Int(tipPercentSlider.value)
        tipPercentLabel.text = String(format: "%d %%", tipPercentage)
        let tipAmt = billAmt * (Double(tipPercentage) / 100)
        tipAmountLabel.text = String(format: "$%.2f", tipAmt)
        totalBillLabel.text = String(format: "$%.2f", (billAmt + tipAmt))
        
    }
    
    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
    }
}

