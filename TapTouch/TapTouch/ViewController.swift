//
//  ViewController.swift
//  TapTouch
//
//  Created by 강현석 on 2020/10/15.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var lbMessage: UILabel!
    @IBOutlet var lbTapCount: UILabel!
    @IBOutlet var lbTouchCount: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let touch = touches.first! as UITouch
        
        lbMessage.text = "Touches Began"
        lbTapCount.text = String(touch.tapCount)
        lbTouchCount.text = String(touches.count)
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        let touch = touches.first! as UITouch
        
        lbMessage.text = "Touches Moved"
        lbTapCount.text = String(touch.tapCount)
        lbTouchCount.text = String(touches.count)
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        let touch = touches.first! as UITouch
        
        lbMessage.text = "Touches Ended"
        lbTapCount.text = String(touch.tapCount)
        lbTouchCount.text = String(touches.count)
    }
}

