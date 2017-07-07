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

class HomeVC: UIViewController{
    
    //MARK: - Properties
    
    
    
    //MARK: - Outlets
    @IBOutlet weak var weatherImageView: UIImageView!
    @IBOutlet weak var currentLocationLabel: UILabel!
    @IBOutlet weak var currentTemperatureLabel: UILabel!
    @IBOutlet weak var currentWeatherDescriptionLabel: UILabel!
    @IBOutlet weak var currentWeatherState: UILabel!
    @IBOutlet weak var weatherIcon: UILabel!
    
    
    //MARK: - Override Methods
    override func viewDidLoad() {
        super.viewDidLoad()
    
        //First, we make the API call to fetch the weather data
        WeatherAPI.getWeather(fromZipcode: "94103", completion: { data in
            
            //Once the data download has been complete, we update the UI
            return self.updateUI(weather: data)
        })
        
        
    }
    
    
    //MARK: - Public Methods
    
    
    
    //MARK: - Private Methods
    
    
    
    //MARK: - Actions
    @IBAction func seeSuggestionButtonTapped(_ sender: Any) {
        print("see suggestion button tapped")
    }
    
    func updateUI(weather: WeatherData) {
        DispatchQueue.main.async() {
            self.currentLocationLabel.text = WeatherData.shared.locationName
            self.currentTemperatureLabel.text = String(WeatherData.shared.temperature)
            self.currentWeatherState.text = WeatherData.shared.weatherStateDescription
            self.currentWeatherDescriptionLabel.text = WeatherData.shared.description
            self.weatherIcon.text = WeatherData.shared.icon
            
            WeatherDataService.shared.getOutfits(WeatherData.shared)
            Outfits.shared.getClothingCombo(WeatherData.shared)
            Outfits.shared.printSetting()


            
        }
    }
}


