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
    
    class func getStyle(description: WeatherData) {
        let description = WeatherData.shared.description
        
        if description.range(of: "Mist") != nil {
            print("Mist style")
        }
        
        if description.range(of: "rain") != nil {
            print("rain style")
        }
        
        if description.range(of: "Clear Sky") != nil {
            print("Clear sky style")
        }
        
    }
    
    
    //MARK: - Private Methods
    
    
    //read the string in weather description and decide which style to recommend
    
    //MARK: - Actions
    
    @IBAction func doneButton(_ sender: Any) {
        print("Done button tapped")
    }
    
    
    //MARK: - Override Methods
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
