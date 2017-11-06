//
//  forecastCell.swift
//  Wear
//
//  Created by Melody on 8/10/17.
//  Copyright © 2017 Melody Yang. All rights reserved.
//

import Foundation
import UIKit

class ForecastCell: UITableViewCell {
    
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var forecastDSLabel: UILabel!
    @IBOutlet weak var forecastTempLabel: UILabel!
    
    override func awakeFromNib() {
         super.awakeFromNib()
    }
}
