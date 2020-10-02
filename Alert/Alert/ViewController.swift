//
//  ViewController.swift
//  Alert
//
//  Created by 강현석 on 2020/10/02.
//

import UIKit

class ViewController: UIViewController {

    let imgOn = UIImage(named: "lamp-on.png")
    let imgOff = UIImage(named: "lamp-off.png")
    let imgRemove = UIImage(named: "lamp-remove.png")
    
    var isLampOn = true
    
    @IBOutlet var ivLamp: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        ivLamp.image = imgOn
    }

    @IBAction func onLamp(_ sender: UIButton) {
        if isLampOn == true {
            let lampOnAlert = UIAlertController(
                title: "경고",
                message: "현재 On 상태입니다.",
                preferredStyle: UIAlertController.Style.alert
            )
            let onAction = UIAlertAction(
                title: "네 알겠습니다.",
                style: UIAlertAction.Style.default,
                handler: nil
            )
            lampOnAlert.addAction(onAction)
            present(lampOnAlert, animated: true, completion: nil)
        } else {
            ivLamp.image = imgOn
            isLampOn = true
        }
    }
    
    @IBAction func offLamp(_ sender: UIButton) {
    }
    
    @IBAction func removeLamp(_ sender: UIButton) {
    }
}

