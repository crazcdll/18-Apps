//
//  ViewController.swift
//  Where Am I
//
//  Created by ZC on 16/1/17.
//  Copyright © 2016年 ZC. All rights reserved.
//

import UIKit
import CoreLocation

class ViewController: UIViewController ,CLLocationManagerDelegate {
    
    var manager:CLLocationManager!
    
    @IBOutlet weak var latitudeLabel: UILabel!
    @IBOutlet weak var longitudeLabel: UILabel!
    @IBOutlet weak var courseLabel: UILabel!
    @IBOutlet weak var speedLabel: UILabel!
    @IBOutlet weak var altitudeLabel: UILabel!
    @IBOutlet weak var addressLabel: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        manager = CLLocationManager()
        manager.delegate = self
        manager.desiredAccuracy = kCLLocationAccuracyBest
        manager.requestWhenInUseAuthorization()
        manager.startUpdatingLocation()
        
    }
    
    func locationManager(manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        
        print(locations)
        
        let userLocation:CLLocation = locations[0]
        
        self.latitudeLabel.text = String(userLocation.coordinate.latitude)
        self.longitudeLabel.text = String(userLocation.coordinate.longitude)
        self.courseLabel.text = String(userLocation.course)
        self.speedLabel.text = String(userLocation.speed)
        self.altitudeLabel.text = String(userLocation.altitude)
        
        CLGeocoder().reverseGeocodeLocation(userLocation) { (placemarks, error) -> Void in
            
            if (error != nil) {
                
              print(error)
                
            } else {
                
                print(placemarks)
                
                if let p = placemarks?[0] {
                    
                    var subThoroughfare:String = ""
                    
                    if (p.subThoroughfare != nil) {
                        
                        subThoroughfare = p.subThoroughfare!
                    }
                    
                    self.addressLabel.text = String(subThoroughfare) + "\n" + String(p.thoroughfare!) + "\n"  + String(p.locality!) + "\n"  + String(p.administrativeArea!)  + "\n" + String(p.country!)
                    
                }
                
            }
            
        }
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

