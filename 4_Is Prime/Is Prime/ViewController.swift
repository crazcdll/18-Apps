//
//  ViewController.swift
//  Is Prime
//
//  Created by ZC on 16/1/9.
//  Copyright © 2016年 ZC. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var numberTextField: UITextField!
    
    @IBOutlet weak var result: UILabel!
    
    @IBAction func isItPrime(sender: AnyObject) {
        
        if let number = Int(numberTextField.text!) {
            
            var isPrime = true
            
            if number == 1 {
                
                isPrime = false
                
            } else if number == 2 {
                
                isPrime = true
            
            } else {
                
                for i in 2..<number {
                    
                    if number % i == 0 {
                        
                        isPrime = false
                    }
                }
                
            }
            
            if isPrime {
                
                result.text = "\(number) is a prime number!"
                
            } else {
                
                result.text = "\(number) is not a prime number"
                
            }
            
            
        } else {
            result.text = "Please enter a whole number"
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

