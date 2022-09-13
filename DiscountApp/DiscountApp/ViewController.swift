//
//  ViewController.swift
//  DiscountApp
//
//  Created by Gutta,Thrinadh Chowdary on 9/13/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var Amount: UITextField!
    
    
    @IBOutlet weak var Discount: UITextField!
    
    
    @IBOutlet weak var result: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func calcDiscount(_ sender: UIButton) {
        
        var enterAmount = Double (Amount.text!)
        var enterDiscRate = Double (Discount.text!)
        var priceAfterDiscount = enterAmount! - (enterAmount!*enterDiscRate!/100)
        result.text = "price after discount is $ \(priceAfterDiscount)"
    }
    

}

