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
        layer.cornerRadius = 7
        layer.cornerRadius = 5.0
        layer.borderColor = UIColor(red:0.31, green:0.00, blue:0.48, alpha: 0.10).cgColor
        clipsToBounds = true
        contentEdgeInsets = UIEdgeInsets(top: 8, left: 8, bottom: 8, right: 8)
        setBackgroundColor(color: UIColor(red:0.55, green:0.29, blue:0.71, alpha:1.0), forState: .selected)
        setTitleColor(UIColor.black, for: .selected)
        
    
    }
}
