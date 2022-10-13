//
//  ViewController.swift
//  CoordinatesDemo
//
//  Created by Gutta,Thrinadh Chowdary on 10/13/22.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var imageViewOutlet: UIImageView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let minx = imageViewOutlet.frame.minX
        let miny = imageViewOutlet.frame.minY
        
        print(minx , miny)
        let maxx = imageViewOutlet.frame.maxX
        let maxy = imageViewOutlet.frame.maxY
        print(maxx , maxy)
        
        let midx = imageViewOutlet.frame.midX
        let midy = imageViewOutlet.frame.midY
        
        print(midx,midy)
        
        
        //move the location to the upperleft corner
        
        imageViewOutlet.frame.origin.x = 0
        imageViewOutlet.frame.origin.y = 0
        
        //move the location to the upper right corner
        imageViewOutlet.frame.origin.x = 314
        imageViewOutlet.frame.origin.y = 0
        
        //move the location to the bottom left corner
        imageViewOutlet.frame.origin.x = 0
        imageViewOutlet.frame.origin.y = 796
        
        //move the location to the bottom right corner
        imageViewOutlet.frame.origin.x = 314
        imageViewOutlet.frame.origin.y = 796
        //move the location to the center
        //((414/2)-50, (896/2)-50)//50 in nothing but width of the image
        imageViewOutlet.frame.origin.x = 157
        imageViewOutlet.frame.origin.y = 398
    }


}

