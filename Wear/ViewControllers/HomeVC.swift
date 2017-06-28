//
//  HomeViewController.swift
//  Ear
//
//  Created by Melody on 6/26/17.
//  Copyright © 2017 Melody Yang. All rights reserved.
//

import Foundation
import UIKit
//import SwiftOpenWeatherMapAPI

class HomeVC: UIViewController {
    
    //MARK: - Properties
    
    
    
    //MARK: - Outlets
    @IBOutlet weak var weatherImageView: UIImageView!
    @IBOutlet weak var currentLocationLabel: UILabel!
    @IBOutlet weak var currentTemperatureLabel: UILabel!
    @IBOutlet weak var currentWeatherDescriptionLabel: UILabel!
    
    
    //MARK: - Override Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        
        WeatherAPI.getWeather(fromZipcode: "95050")
//        currentLocationLabel.text =
    }
    
    
    //MARK: - Public Methods
    
    
    
    //MARK: - Private Methods
    
    
    
    //MARK: - Actions
    @IBAction func seeSuggestionButtonTapped(_ sender: Any) {
        print("see suggestion button tapped")
    }
}


