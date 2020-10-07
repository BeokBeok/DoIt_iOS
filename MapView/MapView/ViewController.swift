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
    
    func goLocation(latitude: CLLocationDegrees, longitude: CLLocationDegrees, delta span: Double) {
        let pLocation = CLLocationCoordinate2DMake(latitude, longitude)
        let coordinateSpan = MKCoordinateSpan(latitudeDelta: span, longitudeDelta: span)
        let pRegion = MKCoordinateRegion(center: pLocation, span: coordinateSpan)
        mapView.setRegion(pRegion, animated: true)
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        let pLocation = locations.last
        goLocation(latitude: (pLocation?.coordinate.latitude)!, longitude: (pLocation?.coordinate.longitude)!, delta: 0.01)
    }

    @IBAction func changeLocation(_ sender: UISegmentedControl) {
    }
    
}

