//
//  ViewController.swift
//  Myapp
//
//  Created by Gutta,Thrinadh Chowdary on 8/25/22.
//

import UIKit

class ViewController: UIViewController {
    
        
    @IBOutlet weak var inputFeild: UITextField!
    
    
    @IBOutlet weak var output: UILabel!
    
    override func viewDidLoad() {
      super.viewDidLoad()
    }
    

    @IBAction func submit(_ sender: UIButton) {
        
        var name = inputFeild.text!
        
        output.text = "Hello, \(name) !"
        
    }
    
}
