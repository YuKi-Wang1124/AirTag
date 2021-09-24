//
//  carveControllerViewController.swift
//  AirTag刻字
//
//  Created by 王昱淇 on 2021/9/24.
//

import UIKit

class carveControllerViewController: UIViewController {

    @IBOutlet weak var carveTextField: UITextField!
    @IBOutlet weak var carveLabel: UILabel!
    @IBOutlet weak var warningLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        warningLabel.isHidden = true
        carveLabel.textColor = UIColor.lightGray
    }
    
    @IBAction func changeText(_ sender: UITextField) {
        carveLabel.text = sender.text
        let count = Int((sender.text?.count)!)
        if count > 4 {
            warningLabel.isHidden = false
        } else {
            warningLabel.isHidden = true
        }
    }
  
    @IBAction func endKeyboard(_ sender: UITapGestureRecognizer) {
        view.endEditing(true)
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
