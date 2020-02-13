//
//  ViewControllerDistancia.swift
//  Conversores
//
//  Created by William Tomaz on 16/10/19.
//  Copyright © 2019 William Tomaz. All rights reserved.
//

import UIKit

class ViewControllerDistancia: UIViewController {
    
    @IBOutlet weak var distanceValue: UITextField!
    @IBOutlet weak var resultDistanceLabel: UILabel!
    @IBOutlet weak var resultDistanceType: UILabel!
    
    @IBAction func metroButton(_ sender: Any) {
        var metros = (distanceValue.text! as NSString).floatValue
        metros = metros * 1000
        resultDistanceLabel.text = String(format: "%.2f",metros)
        resultDistanceType.text = "Metros"
        
    }
    @IBAction func kilometroButton(_ sender: Any) {
        var kilometros = (distanceValue.text! as NSString).floatValue
        kilometros = kilometros / 1000
        resultDistanceLabel.text = String(format: "%.2f",kilometros)
        resultDistanceType.text = "Quilometros"
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
