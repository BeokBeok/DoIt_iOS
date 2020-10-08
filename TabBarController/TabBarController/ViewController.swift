//
//  ViewController.swift
//  TabBarController
//
//  Created by 강현석 on 2020/10/08.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func moveImageView(_ sender: UIButton) {
        tabBarController?.selectedIndex = 1
    }
    
    @IBAction func moveDatePickerView(_ sender: UIButton) {
        tabBarController?.selectedIndex = 2
    }
    
}

