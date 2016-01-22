//
//  ViewController.swift
//  Permanent Storage
//
//  Created by ZC on 16/1/9.
//  Copyright © 2016年 ZC. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        NSUserDefaults.standardUserDefaults().setObject("zcdll", forKey: "name")
        
        let userName = NSUserDefaults.standardUserDefaults().objectForKey("name")! as! String
        
        print(userName)
        
        let arr = [1,2,3,4,5]
        
        NSUserDefaults.standardUserDefaults().setObject(arr, forKey: "Array")
        
        let returnArray = NSUserDefaults.standardUserDefaults().objectForKey("Array")! as! NSArray
        
        for m in returnArray {
            
            print(m)
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

