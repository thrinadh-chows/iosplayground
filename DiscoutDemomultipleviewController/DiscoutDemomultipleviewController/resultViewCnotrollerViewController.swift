//
//  resultViewCnotrollerViewController.swift
//  DiscoutDemomultipleviewController
//
//  Created by Gutta,Thrinadh Chowdary on 10/25/22.
//

import UIKit

class resultViewCnotrollerViewController: UIViewController {
    
    
    
    @IBOutlet weak var displayAmountOutlet: UILabel!
    
    
    @IBOutlet weak var discountAmountOutlet: UILabel!
    
    
    @IBOutlet weak var resultOutlet: UILabel!
    
    
    
    var amountA = ""
    var discRateD = ""
    var resultR = ""
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        displayAmountOutlet.text = amountA
        discountAmountOutlet.text = discRateD
        resultOutlet.text = resultR

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
