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
    
    func goLocation(latitude: CLLocationDegrees, longitude: CLLocationDegrees, delta span: Double) -> CLLocationCoordinate2D {
        let pLocation = CLLocationCoordinate2DMake(latitude, longitude)
        let coordinateSpan = MKCoordinateSpan(latitudeDelta: span, longitudeDelta: span)
        let pRegion = MKCoordinateRegion(center: pLocation, span: coordinateSpan)
        mapView.setRegion(pRegion, animated: true)
        return pLocation
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        let pLocation = locations.last
        _ = goLocation(latitude: (pLocation?.coordinate.latitude)!, longitude: (pLocation?.coordinate.longitude)!, delta: 0.01)
        CLGeocoder().reverseGeocodeLocation(pLocation!, completionHandler: { (placemarks, error) -> Void in
            let pm = placemarks!.first
            let country = pm!.country
            var address: String = country!
            if pm!.locality != nil {
                address += " "
                address += pm!.locality!
            }
            if pm!.thoroughfare != nil {
                address += " "
                address += pm!.thoroughfare!
            }
            
            self.lbLocationInfo.text = "현재 위치"
            self.lbLocationDetail.text = address
        })
        
        locationManager.stopUpdatingLocation()
    }
    
    func setAnnotation(latitude: CLLocationDegrees, longitude: CLLocationDegrees, delta span: Double, title: String, subtitle: String) {
        let annotation = MKPointAnnotation()
        annotation.coordinate = goLocation(latitude: latitude, longitude: longitude, delta: span)
        annotation.title = title
        annotation.subtitle = subtitle
        mapView.addAnnotation(annotation)
    }

    @IBAction func changeLocation(_ sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 0 {
            self.lbLocationInfo.text = ""
            self.lbLocationDetail.text = ""
            locationManager.startUpdatingLocation()
        } else if sender.selectedSegmentIndex == 1 {
            setAnnotation(
                latitude: 37.751853,
                longitude: 128.87605740000004,
                delta: 1,
                title: "한국폴리텍대학 강릉캠퍼스",
                subtitle: "강원도 강릉시 남산초교길 121"
            )
        } else if sender.selectedSegmentIndex == 2 {
            setAnnotation(
                latitude: 37.556876,
                longitude: 126.914066,
                delta: 0.1,
                title: "이지스퍼블리싱",
                subtitle: "서울시 마포구 잔다리로 109 이지스 빌딩"
            )
        }
    }
    
}

