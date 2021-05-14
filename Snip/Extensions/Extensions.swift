//
//  Extensions.swift
//  Snip
//
//  Created by Garry Fanata on 5/10/21.
//

import Foundation
import UIKit

//MARK:- UIButton extension methods
extension UIButton {
   func roundedButtons() {
    self.layer.borderColor = self.layer.backgroundColor
    self.layer.cornerRadius = self.frame.height/2
    self.layer.borderWidth = 2
   }
}

//MARK:- UITextField extension methods
extension UITextField {
    func drawBottomLine() {
        let bottomLine = CALayer()
        bottomLine.frame = CGRect(x: 0, y: self.frame.height + 2, width: self.frame.width, height: 2)
        bottomLine.backgroundColor = UIColor.lightGray.cgColor
        self.borderStyle = UITextField.BorderStyle.none
        self.layer.addSublayer(bottomLine)
    }
}

//MARK:- UIImageView extension methods
extension UIImageView {
    func makeImageCircle() {
        self.layer.masksToBounds = false
        self.layer.cornerRadius = self.frame.width / 2.6
        self.clipsToBounds = true
    }
}
