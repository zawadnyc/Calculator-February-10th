//
//  ViewController.swift
//  Calculator February 10th
//
//  Created by zawad ahmed on 2/10/19.
//  Copyright © 2019 zawad ahmed. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func onTap(_ sender: Any) {
        print("hello")
        
        view.endEditing(true)
        
        
      
        
        
        
    }
    
    @IBAction func calculateTip(_ sender: Any) {
        
        // get the bill amount
        let bill = Double(billField.text!) ?? 0
        
        // calculate the tip and total
        let tipPercentages = [0.15, 0.18, 0.2]
        
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        
        // update the tip and total labels
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", tip)
        
        
    }
}

