//
//  EditViewController.swift
//  NavigationController
//
//  Created by 강현석 on 2020/10/13.
//

import UIKit

protocol EditDelegate {
    func didMessageEditDone(_ controller: EditViewController, message: String)
    func didImageOnOffDone(_ controller: EditViewController, isOn: Bool)
}

class EditViewController: UIViewController {

    var textWayValue: String = ""
    var textMessage: String = ""
    var delegate: EditDelegate?
    var isOn = false
    
    @IBOutlet var lbWay: UILabel!
    @IBOutlet var tfMessage: UITextField!
    @IBOutlet var swOn: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        lbWay.text = textWayValue
        tfMessage.text = textMessage
        swOn.isOn = isOn
    }
    
    @IBAction func done(_ sender: UIButton) {
        if delegate != nil {
            delegate?.didMessageEditDone(self, message: tfMessage.text!)
            delegate?.didImageOnOffDone(self, isOn: isOn)
        }
        _ = navigationController?.popViewController(animated: true)
    }
    
    @IBAction func changeImageOnOff(_ sender: UISwitch) {
        isOn = sender.isOn
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
