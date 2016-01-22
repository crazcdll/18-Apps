//
//  ViewController.swift
//  Core Data Demo
//
//  Created by zcdll on 16/1/22.
//  Copyright © 2016年 zcdll. All rights reserved.
//

import UIKit
import CoreData

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let appDel: AppDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
        
        let context: NSManagedObjectContext = appDel.managedObjectContext
        
        //第一次添加时使用，不注释会每次添加一次
        /*
        let newUser = NSEntityDescription.insertNewObjectForEntityForName("Users", inManagedObjectContext: context)
        
        newUser.setValue("zcdll", forKey: "username")
        
        newUser.setValue("asdf", forKey: "password")
        
        do {
            
            try context.save()
            
        } catch {
            
            print("Save problem")
            
        }
        */
        
        let request = NSFetchRequest(entityName: "Users")
        
        do {
            
            let results = try context.executeFetchRequest(request)
            
            if results.count > 0 {
                
                for result in results as! [NSManagedObject] {
                    
                    print(result.valueForKey("username")!)
                    
                    print(result.valueForKey("password")!)
                    
                }
                
            }
            
        } catch {
            
            print("Fetch failed")
            
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
