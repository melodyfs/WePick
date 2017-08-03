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
        setTitleColor(UIColor.white, for: .selected)
        
    
    }
}

class CustomSegmentedControl: UISegmentedControl {
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        layer.cornerRadius = 4
        let mask = CAShapeLayer()
        //mask.frame = CGRect(0, 0, width-1, height);
        let maskPath = UIBezierPath(roundedRect: mask.frame,
                                    byRoundingCorners: [.bottomLeft, .bottomRight, .topLeft, .topRight],
                                    cornerRadii: CGSize(width: 4.0, height: 4.0))
        mask.path = maskPath.cgPath
        layer.mask = mask
    }
}
