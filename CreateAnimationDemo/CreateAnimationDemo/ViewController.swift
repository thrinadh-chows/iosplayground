//
//  ViewController.swift
//  CreateAnimationDemo
//
//  Created by Gutta,Thrinadh Chowdary on 10/18/22.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var imageOutlet: UIImageView!
    
    @IBOutlet weak var happyOutlet: UIButton!
    
    @IBOutlet weak var sadOutlet: UIButton!
    
    
    @IBOutlet weak var angryOutlet: UIButton!
    
    
    @IBOutlet weak var shakeMeOutlet: UIButton!
    
    
    @IBOutlet weak var showOutlet: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    
    override func viewDidAppear(_ animated: Bool) {
        //move te image view outside ofthe scrteen view
        imageOutlet.frame.origin.x = view.frame.maxX
        //move other components as well outside of the screen
        
        happyOutlet.frame.origin.x = view.frame.width
        sadOutlet.frame.origin.x = view.frame.width
        angryOutlet.frame.origin.x = view.frame.width
        shakeMeOutlet.frame.origin.x = view.frame.width
        
        
    }
    
    
    @IBAction func happyAction(_ sender: UIButton) {
        
        updateAndAnimate("happy")
    }
    
    
    @IBAction func sadAction(_ sender: UIButton) {
        
        updateAndAnimate("sad")
    }
    
    
    @IBAction func angryAction(_ sender: UIButton) {
        
        updateAndAnimate("angry")
    }
    
    
    
    @IBAction func shakeMeAction(_ sender: UIButton) {
        var width = imageOutlet.frame.width
        width += 60
        var height = imageOutlet.frame.height
        height += 60
        var x = imageOutlet.frame.origin.x-10
        var y = imageOutlet.frame.origin.y-10
        
        var largeFrame = CGRect(x:x , y:y , width:width, height:height)
        
        UIView.animate(withDuration: 5, delay: 0, usingSpringWithDamping: 1.0, initialSpringVelocity: 100 ,  animations: {
            self.imageOutlet.frame = largeFrame
        })
        
            }
    
    
    
    
    @IBAction func showAction(_ sender: UIButton) {
        
        
        
        UIView.animate(withDuration: 1, animations: {
            self.imageOutlet.center.x = self.view.center.x
            self.happyOutlet.center.x = self.view.center.x
            self.sadOutlet.center.x = self.view.center.x
            self.angryOutlet.center.x = self.view.center.x
            self.shakeMeOutlet.center.x = self.view.center.x
        
        
        })
        
        
        showOutlet.isEnabled = false
    }
    
    
    func updateAndAnimate(_ imageName :String){
        
        
        //making the current image opaque
        UIView.animate(withDuration: 1, animations: {
            self.imageOutlet.alpha = 0
            
        })
        //assign new image with animation and make it transparent(alpha=1)
        UIView.animate(withDuration:  1, delay:0.5, animations: {
            self.imageOutlet.alpha = 1
            self.imageOutlet.image = UIImage(named: imageName)
        })
        
    }
    
}

