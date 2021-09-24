//
//  ButtonStyle.swift
//  AirTag刻字
//
//  Created by 王昱淇 on 2021/9/24.
//

import Foundation
import UIKit

class myButton: UIButton {
    override var isHighlighted: Bool {
        didSet {
            switch isHighlighted {
            case true :
                layer.borderColor = UIColor.tintColor.cgColor
            case false:
                layer.borderColor = UIColor.tintColor.cgColor
            }
        }
    }
}
