//
//  ViewController.swift
//  Guess Fingers
//
//  Created by ZC on 16/1/8.
//  Copyright © 2016年 ZC. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var UserGuessTextField: UITextField!
    
    @IBOutlet weak var Result: UILabel!
    
    @IBAction func Check(sender: AnyObject) {
        
        let rand = String(arc4random_uniform(6))
        
        if UserGuessTextField.text?.isEmpty == true {
            Result.text = "Please input your guess number!"
        }else if UserGuessTextField.text == rand {
            Result.text = "Great! The number is " + rand
        }else {
            Result.text = "Sorry, the correct number is " + rand + " !"
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

