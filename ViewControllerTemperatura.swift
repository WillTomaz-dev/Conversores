//
//  ViewControllerTemperatura.swift
//  Conversores
//
//  Created by William Tomaz on 16/10/19.
//  Copyright © 2019 William Tomaz. All rights reserved.
//

import UIKit

class ViewControllerTemperatura: UIViewController {
    
    @IBOutlet weak var temperatureValue: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var resultLabelType: UILabel!
    @IBAction func celsiusButton(_ sender: Any) {
        
        var celcius = (temperatureValue.text! as NSString).floatValue
        celcius = (celcius * 1.8) + 32
        resultLabel.text = String(format: "%.2f",celcius)
        resultLabelType.text = "Celcius"
    }
    
    @IBAction func fahrenheitButton(_ sender: Any) {
        var fahrenheitValue = (temperatureValue.text! as NSString).floatValue
        fahrenheitValue = (fahrenheitValue - 32) / 1.8
        resultLabel.text = String(format: "%.2f", fahrenheitValue)
        resultLabelType.text = "Fahrenheit"
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
