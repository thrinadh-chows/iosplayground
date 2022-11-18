//
//  ViewController.swift
//  DiscoutDemomultipleviewController
//
//  Created by Gutta,Thrinadh Chowdary on 10/25/22.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    @IBOutlet weak var amountOutlet: UITextField!
    
    
    @IBOutlet weak var discountRateOutlet: UITextField!
    
    var priceAfterDiscount = 0.0

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    
    @IBAction func calculateButtonClicked(_ sender: UIButton) {
        
        var amount = Double(amountOutlet.text!)
        var DiscRate = Double(discountRateOutlet.text!)
        priceAfterDiscount = amount! - (amount!*DiscRate! / 100)
        
      
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        var transition = segue.identifier
        if transition == "resultSegment"{
            var destination = segue.destination as! resultViewCnotrollerViewController
            
            destination.amountA = amountOutlet.text!
            destination.discRateD = discountRateOutlet.text!
            destination.resultR = String(priceAfterDiscount)
            
            amountOutlet.text! = ""
            discountRateOutlet.text! = ""
        }
    }

}

