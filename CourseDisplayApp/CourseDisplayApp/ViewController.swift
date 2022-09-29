//
//  ViewController.swift
//  CourseDisplayApp
//
//  Created by Gutta,Thrinadh Chowdary on 9/29/22.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var displayImage: UIImageView!
    
    
    @IBOutlet weak var crsNumberOutlet: UILabel!
    
    
    @IBOutlet weak var crsTitleOutlet: UILabel!
    
    
    @IBOutlet weak var semOfferedOutlet: UILabel!
    
    
    @IBOutlet weak var previousButtonOutlet: UIButton!
    
    
    @IBOutlet weak var nextButtonOutlet: UIButton!
    
    
    let courses = [["img01", "44555", "network Security", "fall 2022"], ["img02", "44643" ,"Mobile Eddge Computing", "Spring 2023"], ["img03", "44656","Data Streaming","Sumer 2023"]]

    
    var imageNum = 0;
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // Display the first course (0th index)details
        
        displayImage.image = UIImage(named: courses[0][0])
        crsNumberOutlet.text = courses[0][1]
        crsTitleOutlet.text = courses[0][2]
        semOfferedOutlet.text = courses[0][3]
        
        //prvious buton is disabled
        
        
        previousButtonOutlet.isEnabled = false
    }
    
    
    @IBAction func onClickPrevious(_ sender: UIButton) {
        
        
       imageNum -= 1
        
        displayImage.image = UIImage(named: courses[imageNum ][0])
        crsNumberOutlet.text = courses[imageNum ][1]
        crsTitleOutlet.text = courses[imageNum ][2]
        semOfferedOutlet.text = courses[imageNum ][3]
        
        //prvious buton is disabled
        
        
       
        nextButtonOutlet.isEnabled = true
        
        if(imageNum == 0){
            //previous button should be disabled
            previousButtonOutlet.isEnabled = false
        }
        
        
    }
    
    
    
    @IBAction func onClickNext(_ sender: UIButton) {
        
        //the details of first course should be displayed
        
        imageNum += 1
        displayImage.image = UIImage(named: courses[imageNum][0])
        crsNumberOutlet.text = courses[imageNum][1]
        crsTitleOutlet.text = courses[imageNum][2]
        semOfferedOutlet.text = courses[imageNum][3]
        
        //prvious buton is disabled
        
        
        previousButtonOutlet.isEnabled = true
        // once reaching end of array , next button should be disabled
        
        if(imageNum == courses.count-1 ){
            //next button should be disabled
            nextButtonOutlet.isEnabled = false
        }

    }
    
    

}

