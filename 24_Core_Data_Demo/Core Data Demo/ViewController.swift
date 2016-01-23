//
//  ViewController.swift
//  Core Data Demo
//
//  Created by zcdll on 16/1/22.
//  Copyright © 2016年 ZC. All rights reserved.
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
        
        newUser.setValue("zcdll12", forKey: "username")
        
        newUser.setValue("asdf12", forKey: "password")
        
        do {
            
            try context.save()
            
        } catch {
            
            print("Save problem")
            
        }
        */
        
        let request = NSFetchRequest(entityName: "Users")
        
        //request.predicate = NSPredicate(format: "username = %@", "zcdll3")
        
        request.returnsObjectsAsFaults = false
        
        do {
            
            let results = try context.executeFetchRequest(request)
            
            if results.count > 0 {
                
                for result in results as! [NSManagedObject] {
                    
                    /*
                    
                    context.deleteObject(result)
                    //result.setValue("zcdll3",forKey: "username")
                    
                    do {
                        
                        try context.save()
                        
                    } catch {}
                    
                    */
                    
                    if let username = result.valueForKey("username") as? String {
                    
                        print(username)
                        
                    }
                    
                    //print(result.valueForKey("password")!)
                    
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
