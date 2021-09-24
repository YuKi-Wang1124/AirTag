//
//  ViewController.swift
//  AirTag刻字
//
//  Created by 王昱淇 on 2021/9/24.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet weak var airTagImageView: UIImageView!
    @IBOutlet var piecesButtons: [UIButton]!
    @IBOutlet weak var buyButton: UIButton!
    @IBOutlet weak var moneyLabel: UILabel!
    
    var money: Int = 990
   
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        for i in 0...3 {
            piecesButtons[i].layer.borderColor = UIColor.systemGray3.cgColor
            piecesButtons[i].layer.borderWidth = 3
            piecesButtons[i].layer.cornerRadius = 15
        }
        airTagImageView.image = UIImage(named: "one")
        changeBuyButtonColor()
        showMoney()
    }

    
    func showMoney() {
        let formatter = NumberFormatter()
        formatter.numberStyle = .currencyISOCode
        formatter.locale = Locale(identifier: "zh_TW")
        formatter.maximumFractionDigits = 0
        let moneyString = formatter.string(from: NSNumber(value: money))
        moneyLabel.text = moneyString
    }
    
    func changeBuyButtonColor() {
        if (piecesButtons[0].layer.borderColor == UIColor.tintColor.cgColor || piecesButtons[1].layer.borderColor == UIColor.tintColor.cgColor), (piecesButtons[2].layer.borderColor == UIColor.tintColor.cgColor || piecesButtons[3].layer.borderColor == UIColor.tintColor.cgColor) {
            buyButton.alpha = 1
        } else {
            buyButton.alpha = 0.15
        }
       
    }
  
    @IBAction func changeColor(_ sender: Any) {
        if piecesButtons[0].isTouchInside {
            piecesButtons[0].layer.borderColor = UIColor.tintColor.cgColor
            piecesButtons[1].layer.borderColor = UIColor.systemGray3.cgColor
            money = 990
            airTagImageView.image = UIImage(named: "one")
        } else if piecesButtons[1].isTouchInside {
            piecesButtons[1].layer.borderColor = UIColor.tintColor.cgColor
            piecesButtons[0].layer.borderColor = UIColor.systemGray3.cgColor
            money = 3390
            airTagImageView.image = UIImage(named: "four")
        }
        showMoney()
        changeBuyButtonColor()
        moneyLabel.textColor = .black
    }
    
    @IBAction func changeBorderColor(_ sender: Any) {
        if piecesButtons[2].isTouchInside {
            piecesButtons[2].layer.borderColor = UIColor.tintColor.cgColor
            piecesButtons[3].layer.borderColor = UIColor.systemGray3.cgColor
        } else if piecesButtons[3].isTouchInside {
            piecesButtons[3].layer.borderColor = UIColor.tintColor.cgColor
            piecesButtons[2].layer.borderColor = UIColor.systemGray3.cgColor
        }
        changeBuyButtonColor()
    }
    
    
}

