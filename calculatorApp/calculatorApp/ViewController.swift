//
//  ViewController.swift
//  calculatorApp
//
//  Created by Gutta,Thrinadh Chowdary on 9/1/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var resultLabel: UILabel!
    
    var operand1 :Double = -1.1
    var operand2 :Double = -1.1
    var calcualtes :Character = " "
    
    
    
    
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func Button8(_ sender: UIButton) {
        resultLabel.text = resultLabel.text!  + "8"
        if(operand1 == -1.1){
           operand1 = 8
        }else{
            operand2 = 8
        }
    }
    
    
    @IBAction func Button9(_ sender: UIButton) {
        resultLabel.text = resultLabel.text! + "9"
        if(operand2 == -1.1){
           operand2 = 9
        }else{
            operand1 = 9
        }
        
    }
    @IBAction func ButtonInto(_ sender: UIButton) {
        resultLabel.text = resultLabel.text! + "*"
        // as user click the into symbol, we need to assign to calcoperator to *
        if(calcualtes == " "){
            calcualtes = "*"
        }
    }
    @IBAction func ButtonPlus(_ sender: UIButton) {
        resultLabel.text = resultLabel.text! + "+"
        if(calcualtes == " "){
            calcualtes = "+"
        }
    }
    @IBAction func ButtonMinus(_ sender: UIButton) {
        resultLabel.text = resultLabel.text! + "-"
        if(calcualtes == " "){
            calcualtes = "-"
        }
    }
    @IBAction func ButtonEquals(_ sender: UIButton) {
        resultLabel.text = resultLabel.text! + "="
        
        if(calcualtes == "+"){
            
            resultLabel.text = resultLabel.text! + "\(operand1+operand2)"
            
            
        }
        if(calcualtes == "*"){
            
            resultLabel.text = resultLabel.text! + "\(operand1*operand2)"
            
        }
        if(calcualtes == "-"){
            
            resultLabel.text = resultLabel.text! + "\(operand1-operand2)"
            
        }
    }
    
    
    
    
}

