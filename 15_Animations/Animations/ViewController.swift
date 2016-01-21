//
//  ViewController.swift
//  Animations
//
//  Created by ZC on 16/1/13.
//  Copyright © 2016年 ZC. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var counter = 1
    
    var timer = NSTimer()
    
    var isValidate = true
    
    @IBOutlet weak var alienImage: UIImageView!
    
    
    @IBAction func updateImage(sender: AnyObject) {
        
        /*
        
        if counter == 5 {
        
            counter = 1
        
        } else {
            
            counter++
        }
        
        alienImage.image = UIImage(named: "frame\(counter)")
        */
        
        
        if timer.valid == true {
            
            timer.invalidate()
            
        } else {
            
            timer = NSTimer.scheduledTimerWithTimeInterval(0.1, target: self, selector: Selector("doAnimation"), userInfo: nil, repeats: true)
            
        }
        
        
    }
    
    func doAnimation() {
        
        if counter == 5 {
            
            counter = 1
            
        } else {
            
            counter++
        }
        
        alienImage.image = UIImage(named: "frame\(counter)")
        
    }


    override func viewDidLoad() {
        super.viewDidLoad()
        
        timer = NSTimer.scheduledTimerWithTimeInterval(0.1, target: self, selector: Selector("doAnimation"), userInfo: nil, repeats: true)
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    /*
    override func viewDidLayoutSubviews() {
        
        alienImage.center = CGPointMake(alienImage.center.x - 200, alienImage.center.y)
        
        alienImage.alpha = 0
        
        alienImage.frame = CGRectMake(alienImage.center.x, alienImage.center.y, 0, 0)
        
    }
    
    override func viewDidAppear(animated: Bool) {
        
        UIView.animateWithDuration(3) { () -> Void in
            
        self.alienImage.center = CGPointMake(self.alienImage.center.x + 300, self.alienImage.center.y)
            
        self.alienImage.alpha = 1
            
        self.alienImage.frame = CGRectMake(self.alienImage.center.x, self.alienImage.center.y, 100, 200)
            
            
        }
        
    }
    */

}

