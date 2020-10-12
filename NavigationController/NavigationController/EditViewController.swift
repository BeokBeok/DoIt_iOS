//
//  EditViewController.swift
//  NavigationController
//
//  Created by 강현석 on 2020/10/13.
//

import UIKit

class EditViewController: UIViewController {

    var textWayValue: String = ""
    
    @IBOutlet var lbWay: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        lbWay.text = textWayValue
    }
    
    @IBAction func done(_ sender: UIButton) {
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
