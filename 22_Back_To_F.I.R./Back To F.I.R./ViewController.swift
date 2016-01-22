//
//  ViewController.swift
//  Back To F.I.R.
//
//  Created by ZC on 16/1/20.
//  Copyright © 2016年 ZC. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player:AVAudioPlayer = AVAudioPlayer()
    
    @IBOutlet weak var timeLabel: UILabel!
    
    @IBOutlet weak var timeTotalLabel: UILabel!
    
    @IBAction func play(sender: AnyObject) {
        
        player.play()
        
    }
    
    @IBAction func pause(sender: AnyObject) {
        
        player.pause()
        
    }
    
    @IBAction func stop(sender: AnyObject) {
        
        player.stop()
        
        player.currentTime = 0
        
    }
    
    @IBOutlet weak var volumeSlider: UISlider!
    
    @IBAction func adjustVolume(sender: AnyObject) {
        
        player.volume = volumeSlider.value
        
    }
    
    @IBAction func scrub(sender: AnyObject) {
        
        player.currentTime = NSTimeInterval(scrubSlider.value)
        
        if player.playing == false {
            
            player.play()
            
        }
        
    }
    
    @IBOutlet weak var scrubSlider: UISlider!
    
    func formatTime(inStr:String) -> String {
        
        let inFormatter = NSDateFormatter()
        inFormatter.locale = NSLocale(localeIdentifier: "en_US_POSIX")
        inFormatter.dateFormat = "mm:ss"
        
        let outFormatter = NSDateFormatter()
        outFormatter.locale = NSLocale(localeIdentifier: "en_US_POSIX")
        outFormatter.dateFormat = "mm:ss"
        
        let date = inFormatter.dateFromString(inStr)!
        let outStr = outFormatter.stringFromDate(date)
        
        return outStr
        
    }

    
    func updateScrubSlider() {
        
        scrubSlider.value = Float(player.currentTime)
        
        let minute = Int(player.currentTime / 60)
        
        let second = Int((Double(player.currentTime) - Double(minute * 60)))
        
        let time = "\(minute):\(second)"
        
        timeLabel.text = formatTime(time)
    
    
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        
        do {
            
            try player = AVAudioPlayer(contentsOfURL: NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("我要飞", ofType: "mp3")!))
            
            scrubSlider.maximumValue = Float(player.duration)
            
        } catch {
            
            print("opps")
            
        }
        
        _ = NSTimer.scheduledTimerWithTimeInterval(0.5, target: self, selector: Selector("updateScrubSlider"), userInfo: nil, repeats: true)
        
        timeLabel.text = "00:00"
        
        let totalMinute = Int(player.duration / 60)
        
        let totalSecond = Int(Double(player.duration) - Double(totalMinute * 60))
        
        timeTotalLabel.text = formatTime("\(totalMinute):\(totalSecond)")
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

