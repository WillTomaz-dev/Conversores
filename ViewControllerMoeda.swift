//
//  ViewControllerMoeda.swift
//  Conversores
//
//  Created by William Tomaz on 16/10/19.
//  Copyright © 2019 William Tomaz. All rights reserved.
//

import UIKit

class ViewControllerMoeda: UIViewController {
    
    @IBOutlet weak var currencyValue: UITextField!
    @IBOutlet weak var resultCurrencyLabel: UILabel!
    @IBOutlet weak var resultCurrencyType: UILabel!
    
    @IBAction func realButton(_ sender: Any) {
        var real = (currencyValue.text! as NSString).floatValue
        real = real * 4.18
        resultCurrencyLabel.text = String(format: "%.2f",real)
        resultCurrencyType.text = "Real"
    }
    @IBAction func dolarButton(_ sender: Any) {
        var dolar = (currencyValue.text! as NSString).floatValue
        dolar = dolar / 4.18
        resultCurrencyLabel.text = String(format: "%.2f",dolar)
        resultCurrencyType.text = "Dólar"
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
