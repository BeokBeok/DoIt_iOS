//
//  ViewController.swift
//  NavigationController
//
//  Created by 강현석 on 2020/10/12.
//

import UIKit

class ViewController: UIViewController, EditDelegate {
    
    @IBOutlet var tfMessage: UITextField!

    func didMessageEditDone(_ controller: EditViewController, message: String) {
        tfMessage.text = message
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
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
    }
}

