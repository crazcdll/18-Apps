//
//  ViewController.swift
//  Working With Audio
//
//  Created by ZC on 16/1/20.
//  Copyright © 2016年 ZC. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    @IBOutlet weak var slider: UISlider!
    
    @IBAction func play(sender: AnyObject) {
        
        player.play()
        
    }
    
    @IBAction func pause(sender: AnyObject) {
        
        player.pause()
        
    }
    
    @IBAction func adjustVolume(sender: AnyObject) {
        
        player.volume = slider.value
        
    }
    
    @IBAction func Stop(sender: AnyObject) {
        
        player.stop()
        
        player.currentTime = 0
        
    }
    var player:AVAudioPlayer = AVAudioPlayer()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let audioPath = NSBundle.mainBundle().pathForResource("我要飞", ofType: "mp3")!
        
        do {
            
            try player = AVAudioPlayer(contentsOfURL: NSURL(fileURLWithPath: audioPath))
            
        } catch {
            
            print("crashed")
            
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

