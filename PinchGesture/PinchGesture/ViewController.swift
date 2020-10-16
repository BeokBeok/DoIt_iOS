//
//  ViewController.swift
//  PinchGesture
//
//  Created by 강현석 on 2020/10/16.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var lbPinch: UILabel!
    
    var initialFontSize: CGFloat!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let pinch = UIPinchGestureRecognizer(target: self, action: #selector(ViewController.doPinch(_:)))
        self.view.addGestureRecognizer(pinch)
    }

    @objc func doPinch(_ pinch: UIPinchGestureRecognizer) {
        if (pinch.state == UIGestureRecognizer.State.began) {
            initialFontSize = lbPinch.font.pointSize
        } else {
            lbPinch.font = lbPinch.font.withSize(initialFontSize * pinch.scale)
        }
    }
}

