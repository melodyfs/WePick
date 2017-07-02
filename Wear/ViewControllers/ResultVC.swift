//
//  RecommendationViewController.swift
//  Ear
//
//  Created by Melody on 6/26/17.
//  Copyright © 2017 Melody Yang. All rights reserved.
//

import Foundation
import UIKit

class ResultVC: UIViewController {
    
    //MARK: - Outlets
    @IBOutlet weak var headImageView: UIImageView!
    @IBOutlet weak var upperBodyImageView: UIImageView!
    @IBOutlet weak var lowerBodyImageView: UIImageView!
    @IBOutlet weak var shoeImageView: UIImageView!
    
    
    //MARK: - Public Methods
    
            
    
    //MARK: - Private Methods
    
    
    
    //MARK: - Actions
    
    @IBAction func doneButton(_ sender: Any) {
        print("Done button tapped")
    }
    
    
    //MARK: - Override Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        CreateStyles.getStyle(description: WeatherData.shared.description)
//        CreateStyles.getStyleFromTemp(temp: WeatherData.shared.temperature)
    }
}
