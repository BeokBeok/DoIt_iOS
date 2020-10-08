//
//  ViewController.swift
//  DatePicker
//
//  Created by 강현석 on 2020/09/30.
//

import UIKit

class DatePickerViewController: UIViewController {
    let timeSelector: Selector = #selector(DatePickerViewController.updateTime)
    let interval = 1.0
    let dateFormat = "yyyy-MM-dd HH:mm:ss EEE"
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
        
        formatter.dateFormat = dateFormat
        lbPickerTime.text = "선택 시간 : " + formatter.string(from: datePickerView.date)
    }
    
    @objc func updateTime() {
        let date = NSDate()
        let formatter = DateFormatter()
        
        formatter.dateFormat = dateFormat
        lbCurrentTime.text = "현재 시간 : " + formatter.string(from: date as Date)
    }
}

