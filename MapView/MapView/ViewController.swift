//
//  ViewController.swift
//  MapView
//
//  Created by 강현석 on 2020/10/07.
//

import UIKit
import MapKit

class ViewController: UIViewController {

    @IBOutlet var mapView: MKMapView!
    @IBOutlet var lbLocationInfo: UILabel!
    @IBOutlet var lbLocationDetail: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func changeLocation(_ sender: UISegmentedControl) {
    }
    
}

