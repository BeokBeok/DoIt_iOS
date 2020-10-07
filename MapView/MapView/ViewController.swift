//
//  ViewController.swift
//  MapView
//
//  Created by 강현석 on 2020/10/07.
//

import UIKit
import MapKit

class ViewController: UIViewController, CLLocationManagerDelegate {

    @IBOutlet var mapView: MKMapView!
    @IBOutlet var lbLocationInfo: UILabel!
    @IBOutlet var lbLocationDetail: UILabel!
    
    let locationManager = CLLocationManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupLocation()
    }
    
    func setupLocation() {
        lbLocationInfo.text = ""
        lbLocationDetail.text = ""
        
        locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.requestWhenInUseAuthorization()
        locationManager.startUpdatingLocation()
        
        mapView.showsUserLocation = true
    }

    @IBAction func changeLocation(_ sender: UISegmentedControl) {
    }
    
}

