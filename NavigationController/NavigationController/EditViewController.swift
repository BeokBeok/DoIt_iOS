//
//  EditViewController.swift
//  NavigationController
//
//  Created by 강현석 on 2020/10/13.
//

import UIKit

protocol EditDelegate {
    func didMessageEditDone(_ controller: EditViewController, message: String)
}

class EditViewController: UIViewController {

    var textWayValue: String = ""
    var textMessage: String = ""
    var delegate: EditDelegate?
    
    @IBOutlet var lbWay: UILabel!
    @IBOutlet var tfMessage: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        lbWay.text = textWayValue
        tfMessage.text = textMessage
    }
    
    @IBAction func done(_ sender: UIButton) {
        if delegate != nil {
            delegate?.didMessageEditDone(self, message: tfMessage.text!)
        }
        _ = navigationController?.popViewController(animated: true)
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
