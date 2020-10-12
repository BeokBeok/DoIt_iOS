//
//  ViewController.swift
//  NavigationController
//
//  Created by 강현석 on 2020/10/12.
//

import UIKit

class ViewController: UIViewController, EditDelegate {
        
    let imgOn = UIImage(named: "lamp_on.png")
    let imgOff = UIImage(named: "lamp_off.png")
    
    var isOn = true
    
    @IBOutlet var tfMessage: UITextField!
    @IBOutlet var imgView: UIImageView!
    
    func didMessageEditDone(_ controller: EditViewController, message: String) {
        tfMessage.text = message
    }
    
    func didImageOnOffDone(_ controller: EditViewController, isOn: Bool) {
        if isOn {
            imgView.image = imgOn
            self.isOn = true
        } else {
            imgView.image = imgOff
            self.isOn = false
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imgView.image = imgOn
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let editViewController = segue.destination as! EditViewController
        if segue.identifier == "editButton" {
            editViewController.textWayValue = "segue : use button"
        } else if segue.identifier == "editBarButton" {
            editViewController.textWayValue = "segue : use bar button"
        }
        editViewController.textMessage = tfMessage.text!
        editViewController.delegate = self
        editViewController.isOn = isOn
    }
}

