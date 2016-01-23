//
//  ViewController.swift
//  Downloading An Image
//
//  Created by zcdll on 16/1/23.
//  Copyright © 2016年 ZC. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var image: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        var documentsDirectory:String?
        
        var paths:[AnyObject] = NSSearchPathForDirectoriesInDomains(NSSearchPathDirectory.DocumentDirectory, NSSearchPathDomainMask.UserDomainMask,true)
        
        if paths.count > 0 {
            
            documentsDirectory = paths[0] as? String
            
            let savePath = documentsDirectory! + "/tam.jpg"
                
                self.image.image = UIImage(named: savePath)
            
        }
        
        /*
        let url = NSURL(string: "http://www.tiananmen.org.cn/capinfo_product/NC_Admin/NCAdm-Media/uploadFile/20029293142.jpg")
        
        let task = NSURLSession.sharedSession().dataTaskWithURL(url!) { (data, response, error) -> Void in
            
            if error != nil {
                
                print(error)
                
            } else {
                
                var documentsDirectory:String?
                
                var paths:[AnyObject] = NSSearchPathForDirectoriesInDomains(NSSearchPathDirectory.DocumentDirectory, NSSearchPathDomainMask.UserDomainMask,true)
                
                if paths.count > 0 {
                    
                    documentsDirectory = paths[0] as? String
                    
                    let savePath = documentsDirectory! + "/tam.jpg"
                    
                    NSFileManager.defaultManager().createFileAtPath(savePath, contents: data, attributes: nil)
                    
                    dispatch_async(dispatch_get_main_queue(), { () -> Void in
                            
                            self.image.image = UIImage(named: savePath)
                        
                    })
                    
                }
                
                /*
                dispatch_async(dispatch_get_main_queue(), { () -> Void in
                    
                    if let tiananmen = UIImage(data: data!) {
                        
                        self.image.image = tiananmen
                        
                    }
                    
                })
                */
            }
        }
        
        task.resume()
        */
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

