//
//  ViewController.swift
//  VowelTesterApp
//
//  Created by Gutta,Thrinadh Chowdary on 8/30/22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var EnterText: UITextField!
    
    @IBOutlet weak var Displaylabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func submitbutton(_ sender: UIButton) {
        
        //read the text from the textfield and assign it to a local field
        var text = EnterText.text!
        //check the text has vowel or not
        if(text.contains("a")||text.contains("e")||text.contains("i")||text.contains("o")||text.contains("u")||text.contains("A")||text.contains("E")||text.contains("I")||text.contains("O")||text.contains("U")){
            
            //vowel is in text
            Displaylabel.text = "The text has vowel. "
            
        }
        else{
            Displaylabel.text = "No vowels found. "
        }
            
    }
    
}

