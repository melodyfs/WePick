//
//  CustomeButton.swift
//  Wear
//
//  Created by Melody on 8/2/17.
//  Copyright © 2017 Melody Yang. All rights reserved.
//

import Foundation
import UIKit

class CustomButton: UIButton {
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        layer.borderWidth = 1.0
        layer.cornerRadius = 10
        layer.cornerRadius = 5.0
        clipsToBounds = true
        contentEdgeInsets = UIEdgeInsets(top: 8, left: 8, bottom: 8, right: 8)
        setBackgroundColor(color: UIColor(red:0.51, green:0.19, blue:0.63, alpha:1.0), forState: .selected)
        setTitleColor(UIColor.white, for: .selected)
    
    }
}
