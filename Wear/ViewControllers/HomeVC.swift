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
        
        WeatherAPI.getWeather(fromZipcode: "94103", completion: { data in
            return self.updateUI(weather: data)
//            WeatherDataService.compareEnumValues(WeatherData.shared.weatherStateDescription)
        })
        
//       weatherImageView.image = UIImage(WeatherAPI.getWeatherImage(fromImgCode: "01d"))
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
//            self.currentWeatherDescriptionLabel.text =
            WeatherDataService.enumValue.getOutfits(weatherCondition: WeatherData.shared)
            self.currentWeatherState.text = WeatherData.shared.description
            self.weatherIcon.text = WeatherData.shared.icon
        }
    }
    
//    func updateUI(error: NSError) {
//        DispatchQueue.main.async() {
//            self.showSimpleAlert(forTitle: "Can't get the weather",
//                                 message: "The weather service isn't responding.")
//        }
//        print("didNotGetWeather error: \(error)")
//    }
    
//    func showSimpleAlert(forTitle title: String, message: String) {
//        let alert = UIAlertController(
//            title: title,
//            message: message,
//            preferredStyle: .alert
//        )
//    }
}


