//
//  ViewController.swift
//  Fingers
//
//  Created by Punith Kashi on 12/4/16.
//  Copyright © 2016 PunithRKashi. All rights reserved.
//

import UIKit
import Foundation

class ViewController: UIViewController {
    
    
    @IBOutlet var result: UILabel!
    
    @IBOutlet var age: UITextField!

    @IBAction func submit(_ sender: Any) {
        
        
        //get the value from the text field
        
        let ageinnumber  = age.text
        
        //generate random number
        
        let random = String(arc4random_uniform(4) + 1)

        //checking for the equality
        
        if (age.text?.isEmpty) == true{
         
            result.text = "Please enter a number"
            result.alpha = 1.0
            result.textColor = UIColor.brown
            
            
        } else if random == ageinnumber {
            
            result.text = "You are right!!!"
            result.alpha = 1.0
            result.textColor = UIColor.green
            
        } else{
            
            result.text = "You are wrong, I was holding \(random)"
            result.alpha = 1.0
            result.textColor = UIColor.red
        }
        
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //hide the result label
        
        result.alpha = 0.00
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

