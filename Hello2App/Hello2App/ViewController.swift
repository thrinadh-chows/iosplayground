//
//  ViewController.swift
//  Hello2App
//
//  Created by Gutta,Thrinadh Chowdary on 8/30/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var Text: UITextField!
    
    @IBOutlet weak var displaylabel: UILabel!
            
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func submitButton(_ sender: UIButton) {
        //read text from textfield an d assign it to a local variable
        //! it is nothing but unwrapping the text
        var name = Text.text!
        //assign data(enter your name) to the display label.
        
        
        if(name.count>=4){
            var fourChar = name[name.startIndex..<name.index(name.startIndex, offsetBy: 4)]
            displaylabel.text = " \(fourChar) ";
        }
       
        
    }
    
}

