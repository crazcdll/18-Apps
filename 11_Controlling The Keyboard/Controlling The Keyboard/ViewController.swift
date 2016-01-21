//
//  ViewController.swift
//  Controlling The Keyboard
//
//  Created by ZC on 16/1/10.
//  Copyright © 2016年 ZC. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var numTextField: UITextField!
    
    @IBOutlet weak var numLabel: UILabel!
    
    @IBAction func show(sender: AnyObject) {
        
        if (numTextField.text?.isEmpty == false) {
            
            numLabel.text = numTextField.text
            
        }else {
            numLabel.text = "Please enter a whole number!"
        }
    }
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.numTextField.delegate = self
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        
        self.view.endEditing(true)
        
    }
    
    func textFieldShouldReturn(textField: UITextField!) -> Bool {
        
        textField.resignFirstResponder()
        
        return true
        
    }

}

