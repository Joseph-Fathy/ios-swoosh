//
//  BorderButton.swift
//  swoosh
//
//  Created by Joe on 6/16/19.
//  Copyright © 2019 Joe. All rights reserved.
//

import UIKit

class BorderButton: UIButton {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    
    override func awakeFromNib() {
        super.awakeFromNib()
        layer.borderWidth=2.0
        layer.borderColor = UIColor.white.cgColor
    }

}
