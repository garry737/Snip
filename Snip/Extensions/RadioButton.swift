//
//  RadioButton.swift
//  Snip
//
//  Created by Garry Fanata on 5/14/21.
//

import Foundation
import UIKit

class RadioButton: UIButton {
    var alternateButtons:Array<RadioButton>?
    
    override func awakeFromNib() {
        self.layer.masksToBounds = true
    }
    
    func unselectAlternateButtons() {
        if alternateButtons != nil {
            self.isSelected = true
            
            for aButton:RadioButton in alternateButtons! {
                aButton.isSelected = false
            }
        } else {
            toggleButton()
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        unselectAlternateButtons()
        super.touchesBegan(touches, with: event)
    }
    
    func toggleButton() {
        self.isSelected = !isSelected
    }
}
