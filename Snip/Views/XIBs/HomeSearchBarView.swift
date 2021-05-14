//
//  HomeSearchBarView.swift
//  Snip
//
//  Created by Garry Fanata on 5/12/21.
//

import UIKit

class HomeSearchBarView: UIView {
    @IBOutlet var contentView: UIView!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        commonInit()
    }
    
    func commonInit() {
        Bundle.main.loadNibNamed("HomeSearchBarView", owner: self, options: nil)
        addSubview(contentView)
        contentView.frame = self.bounds

    }
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
