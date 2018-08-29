//
//  ViewController.swift
//  tipcalculator
//
//  Created by hongzhi Pan on 8/27/18.
//  Copyright © 2018 hongzhi Pan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tiplable: UILabel!
    @IBOutlet weak var totallable: UILabel!
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipcontrol: UISegmentedControl!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
    }
    
    
    
    @IBAction func calculatetip(_ sender: Any) {
        let tipPercentages = [0.18,0.2,0.25]
        let bill = Double(billField.text!) ?? 0
        let tip = bill*tipPercentages[tipcontrol.selectedSegmentIndex]
        let total = bill+tip
        
        tiplable.text = String(format: "$%.2f",tip)
        totallable.text = String(format: "$%.2f",total)
    }
}

