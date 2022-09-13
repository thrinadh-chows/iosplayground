//
//  ViewController.swift
//  Gutta_FirstApp
//
//  Created by Gutta,Thrinadh Chowdary on 9/13/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var firstNameTextField: UITextField!
    
    
    @IBOutlet weak var lastNameTextField: UITextField!
    
    
    @IBOutlet weak var fullNameLabel: UILabel!
    
    
    @IBOutlet weak var initialsLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBOutlet weak var details: UILabel!
    
    
    
    @IBAction func onClickOfSubmit(_ sender: UIButton) {
        
        var first = firstNameTextField.text!
        var last = lastNameTextField.text!
        fullNameLabel.text = "Full Name : \(first), \(last)"
        initialsLabel.text = "Initials : \(first[first.index(first.startIndex, offsetBy: 0)])\(last[last.index(last.startIndex, offsetBy: 0)])"
    }
    
    @IBAction func onClickOfReset(_ sender: UIButton) {
        
        firstNameTextField.text = ""
        lastNameTextField.text = ""
        fullNameLabel.text = ""
        initialsLabel.text = ""
        details.text = ""
        firstNameTextField.becomeFirstResponder()
        
    }
    
}

