//
//  ViewController.swift
//  Conversores
//
//  Created by William Tomaz on 15/10/19.
//  Copyright © 2019 William Tomaz. All rights reserved.
//

import UIKit





class ViewController: UIViewController {
  
    
    @IBOutlet weak var weightValue: UITextField!
    @IBOutlet weak var resultWeightLabel: UILabel!
    @IBOutlet weak var resultWeightType: UILabel!
    @IBAction func kilogramButton(_ sender: Any) {
        
        var kiloValue = (weightValue.text! as NSString).floatValue
        kiloValue = kiloValue * 2.2
        resultWeightLabel.text = String(format: "%.2f",kiloValue)
        resultWeightType.text = "Quilograma"
        
    }
    
    @IBAction func libraWeight(_ sender: Any) {
        var libraValue = (weightValue.text! as NSString).floatValue
        libraValue = libraValue * 0.4536
        resultWeightLabel.text = String(format: "%.2f",libraValue)
        resultWeightType.text = "Libra"
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

