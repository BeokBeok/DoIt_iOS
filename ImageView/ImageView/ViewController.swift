//
//  ViewController.swift
//  ImageView
//
//  Created by 강현석 on 2020/09/23.
//

import UIKit

class ViewController: UIViewController {
    var isZoom = false
    var imgOn: UIImage?
    var imgOff: UIImage?

    @IBOutlet var imgView: UIImageView!
    @IBOutlet var btnResize: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imgOn = UIImage(named: "lamp_on.png")
        imgOff = UIImage(named: "lamp_off.png")
        
        imgView.image = imgOn
    }

    @IBAction func resizeImage(_ sender: Any) {
    }
    
    @IBAction func showImage(_ sender: Any) {
    }
}

