//
//  ViewController.swift
//  DatePicker
//
//  Created by 강현석 on 2020/09/30.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var lbCurrentTime: UILabel!
    @IBOutlet var lbPickerTime: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func changeDatePicker(_ sender: UIDatePicker) {
        let datePickerView = sender
        let formatter = DateFormatter()
        
        formatter.dateFormat = "yyyy-MM-dd HH:mm EEE"
        lbPickerTime.text = "선택 시간 : " + formatter.string(from: datePickerView.date)
    }
}

