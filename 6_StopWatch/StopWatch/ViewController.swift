//
//  ViewController.swift
//  StopWatch
//
//  Created by ZC on 16/1/9.
//  Copyright © 2016年 ZC. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var timer = NSTimer()
    
    var time = 0
    
    func increaseTimer() {
        
        time++
        
        timeLabel.text = String(time)
        
    }
    
    @IBOutlet weak var timeLabel: UILabel!
    
    
    @IBAction func play(sender: AnyObject) {
        
        timer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: Selector("increaseTimer"), userInfo: nil, repeats: true)
        
    }
    
    @IBAction func pause(sender: AnyObject) {
        
        timer.invalidate()
        
    }
    
    @IBAction func stop(sender: AnyObject) {
        
        timer.invalidate()
        
        time = 0
        
        timeLabel.text = "0"
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

