//
//  ViewController.swift
//  HelloWorld
//
//  Created by ZC on 16/1/5.
//  Copyright © 2016年 ZC. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var textField: UITextField!
    
    @IBOutlet weak var label: UILabel!
    
    @IBAction func tap(sender: AnyObject) {
        print("tapped")
        label.text = textField.text
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        print("Hello World!")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

