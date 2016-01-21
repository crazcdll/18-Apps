//
//  ViewController.swift
//  Cat Years
//
//  Created by ZC on 16/1/6.
//  Copyright © 2016年 ZC. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var catYearsTextField: UITextField!
    
    @IBOutlet weak var resultYears: UILabel!
    
    @IBAction func findResult(sender: AnyObject) {
        
        if(catYearsTextField != nil){
            
            var catAge = Int(catYearsTextField.text!)!
            
            catAge = catAge * 7
            
            resultYears.text = "Your cat's age is \(catAge) in cat years!"
            
            
        }else{
            resultYears.text = "Please input your cat's age!"
        }
        
    }
    
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

