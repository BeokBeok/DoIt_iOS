//
//  ViewController.swift
//  DatePicker
//
//  Created by 강현석 on 2020/09/30.
//

import UIKit

class ViewController: UIViewController {
    let timeSelector: Selector = #selector(ViewController.updateTime)
    let interval = 1.0
    var count = 0
    
    @IBOutlet var lbCurrentTime: UILabel!
    @IBOutlet var lbPickerTime: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
     
        Timer.scheduledTimer(
            timeInterval: interval,
            target: self,
            selector: timeSelector,
            userInfo: nil,
            repeats: true
        )
    }


    @IBAction func changeDatePicker(_ sender: UIDatePicker) {
        let datePickerView = sender
        let formatter = DateFormatter()
        
        formatter.dateFormat = "yyyy-MM-dd HH:mm EEE"
        lbPickerTime.text = "선택 시간 : " + formatter.string(from: datePickerView.date)
    }
    
    @objc func updateTime() {
        lbCurrentTime.text = String(count)
        count = count + 1
    }
}

