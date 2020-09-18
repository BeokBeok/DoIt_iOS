//
//  ViewController.swift
//  HelloWorld
//
//  Created by 강현석 on 2020/09/18.
//  Copyright © 2020 강현석. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var lbHello: UILabel!
    @IBOutlet var txtName: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func send(_ sender: UIButton) {
        lbHello.text = "Hello, " + txtName.text!
    }
    
}

