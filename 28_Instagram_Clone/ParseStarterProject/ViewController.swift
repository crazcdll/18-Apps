/**
* Copyright (c) 2015-present, Parse, LLC.
* All rights reserved.
*
* This source code is licensed under the BSD-style license found in the
* LICENSE file in the root directory of this source tree. An additional grant
* of patent rights can be found in the PATENTS file in the same directory.
*/

import UIKit
import Parse

class ViewController: UIViewController {
    
    var signupActive = true
    
    @IBOutlet weak var username: UITextField!
    
    @IBOutlet weak var password: UITextField!
    
    @IBOutlet weak var signupButton: UIButton!
    
    @IBOutlet weak var registeredText: UILabel!
    
    @IBOutlet weak var loginButton: UIButton!
    
    var activityIndicator:UIActivityIndicatorView = UIActivityIndicatorView()
    
    func displayAlert(title:String, message:String){
        
        if #available(iOS 8.0, *) {
            
            let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertControllerStyle.Alert)
            
            alert.addAction((UIAlertAction(title: "OK", style: .Default, handler: { (action) -> Void in
                
                self.dismissViewControllerAnimated(true, completion: nil)
                
            })))
            
            self.presentViewController(alert, animated: true, completion: nil)
            
        } else {
            // Fallback on earlier versions
        }

        
    }
    
    @IBAction func signup(sender: AnyObject) {
        
        if username.text == "" || password.text == "" {
            
            displayAlert("Error in form", message: "Please enter a username and a password")
            
        }else {
            
            activityIndicator = UIActivityIndicatorView(frame: CGRectMake(0,0,50,50))
            activityIndicator.center = self.view.center
            activityIndicator.hidesWhenStopped = true
            activityIndicator.activityIndicatorViewStyle = UIActivityIndicatorViewStyle.Gray
            view.addSubview(activityIndicator)
            activityIndicator.startAnimating()
            UIApplication.sharedApplication().beginIgnoringInteractionEvents()
            
            var errorMessage = "Please try later again"
            
            if signupActive == true {
            
                let user = PFUser()
                user.username = username.text
                user.password = password.text
            
                user.signUpInBackgroundWithBlock({ (success, error) -> Void in
                
                    self.activityIndicator.stopAnimating()
                    UIApplication.sharedApplication().endIgnoringInteractionEvents()
                
                    if error == nil {
                    
                        //signup successful
                        self.performSegueWithIdentifier("login", sender: self)
                    
                    } else {
                    
                        if let errorString = error!.userInfo["error"] as? String {
                        
                            errorMessage = errorString
                        
                        }
                    
                        self.displayAlert("Failed signup", message: errorMessage)
                    
                    }
                
                })
            } else {
                
                PFUser.logInWithUsernameInBackground(username.text!, password: password.text!, block: { (user, error) -> Void in
                    
                    self.activityIndicator.stopAnimating()
                    UIApplication.sharedApplication().endIgnoringInteractionEvents()
                    
                    if user != nil {
                        
                        //Logged in!
                        self.performSegueWithIdentifier("login", sender: self)
                        
                    } else {
                        
                        if let errorString = error!.userInfo["error"] as? String {
                            
                            errorMessage = errorString
                            
                        }
                        
                        self.displayAlert("Failed login", message: errorMessage)
                        
                    }
                    
                })
                
            }
            
        }
        
    }
    
    @IBAction func login(sender: AnyObject) {
        
        if signupActive == true {
            
            signupButton.setTitle("Log in", forState: UIControlState.Normal)
            
            registeredText.text = "Not registered?"
            
            loginButton.setTitle("Sign up", forState: UIControlState.Normal)
            
            signupActive = false
            
        } else {
            
            signupButton.setTitle("Sign up", forState: UIControlState.Normal)
            
            registeredText.text = "Already registered?"
            
            loginButton.setTitle("Log in", forState: UIControlState.Normal)
            
            signupActive = true
            
        }
        
        
    }
    

    
//class ViewController: UIViewController, UINavigationControllerDelegate, UIImagePickerControllerDelegate {
    
    /*
    //pause and restore APP
    var activityIndicator: UIActivityIndicatorView = UIActivityIndicatorView()
    
    @IBAction func pause(sender: AnyObject) {
        
        activityIndicator = UIActivityIndicatorView(frame: CGRectMake(0, 0, 50, 50))
        activityIndicator.center = self.view.center
        activityIndicator.hidesWhenStopped = true
        activityIndicator.activityIndicatorViewStyle = UIActivityIndicatorViewStyle.Gray
        view.addSubview(activityIndicator)
        activityIndicator.startAnimating()
        //UIApplication.sharedApplication().beginIgnoringInteractionEvents()

    }
    
    @IBAction func restore(sender: AnyObject) {
        
        activityIndicator.stopAnimating()
        //UIApplication.sharedApplication().endIgnoringInteractionEvents()
        
    }
    
    @IBAction func createAlert(sender: AnyObject) {
        
        if #available(iOS 8.0, *) {
            let alert = UIAlertController(title: "Hey there!", message: "Are you sure?", preferredStyle: UIAlertControllerStyle.Alert)
            
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: { (action) -> Void in
                
                self.dismissViewControllerAnimated(true, completion: nil)
                
            }))
            
            self.presentViewController(alert, animated: true, completion: nil)
            
        } else {
            // Fallback on earlier versions
        }
        
    }
    
    //import images
    func imagePickerController(picker: UIImagePickerController, didFinishPickingImage image: UIImage, editingInfo: [String : AnyObject]?) {
        
        print("Image Selected")
        
        self.dismissViewControllerAnimated(true, completion: nil)
        
        importedImage.image = image
        
    }
    
    @IBOutlet weak var importedImage: UIImageView!
    
    @IBAction func importImage(sender: AnyObject) {
        
        let image = UIImagePickerController()
        
        image.delegate = self
        
        image.sourceType = UIImagePickerControllerSourceType.Camera
        
        image.allowsEditing = false
        
        self.presentViewController(image, animated: true, completion: nil)
        
    }
    */

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
        
        //save data
        /*
        let product = PFObject(className: "Products")
        
        product["name"] = "PC"
        
        product["brand"] = "Dell"
        
        product["price"] = "5566"
        
        product.saveInBackgroundWithBlock { (success, error) -> Void in
            
            if success == true {
                
                print("Saved successfully with ID \(product.objectId)")
                
            } else {
                
                print("Failed")
                
            }
            
        }
        
        */
        
        /*
        //update data
        let query = PFQuery(className: "Products")
        
        query.getObjectInBackgroundWithId("zlWXSV4HTG") { (object: PFObject?, error: NSError?) -> Void in
            
            if error != nil {
                
                print("Failed")
                
            } else if let product = object {
                
                //print(object)
                //print(object?.objectForKey("brand"))
                
                product["brand"] = "Apple"
                
                product["price"] = "98981"
                
                product.saveInBackground()
                
            }
            
        }
        */
    }
    
    override func viewDidAppear(animated: Bool) {
        
        //此处判断了currentUser的username而不是单纯判断currentUser
        //是因为Parse会自动创建一个User，相关变量都是乱码，然后currentUser就非空了，而username为空
        //所以可以判断这个
        if PFUser.currentUser()?.username != nil {
            
            self.performSegueWithIdentifier("login", sender: self)
            
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
