//
//  HomeViewController.swift
//  Ear
//
//  Created by Melody on 6/26/17.
//  Copyright © 2017 Melody Yang. All rights reserved.
//

import Foundation
import UIKit
import CoreLocation

class HomeVC: UIViewController, CLLocationManagerDelegate  {
    
    //MARK: - Properties
    var locationManager = CLLocationManager()

    var  tempZip = ""
    
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
        
        locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.distanceFilter = 200
        locationManager.requestWhenInUseAuthorization()
        locationManager.startUpdatingLocation()


    }
    
    override func viewDidAppear(_ animated: Bool) {
        
        
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        CLGeocoder().reverseGeocodeLocation(manager.location!, completionHandler: {(placemarks, error) -> Void in
            if (error != nil) {
                print("Reverse geocoder failed with error")
                return
            }
            
            if (placemarks?.count)! > 0 {
                var placeMark: CLPlacemark!
                placeMark = placemarks?[0]
                let zipcode = placeMark.postalCode ?? ""
                if self.tempZip != zipcode {
                    self.tempZip = zipcode
                    WeatherAPI.getWeather(fromZipcode: zipcode, completion: { data in
                        //Once the data download has been complete, we update the UI
                        return self.updateUI(weather: data)
                    })
                }
            }else {
                print("Problem with the data received from geocoder")
            }
        })
    }
    
    //checking whether user turn on/off the access to location
    func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus) {
        if status == .authorizedAlways {
            if CLLocationManager.isMonitoringAvailable(for: CLBeaconRegion.self) {
                if CLLocationManager.isRangingAvailable() {
                }
            }
        }
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
            
            WeatherDataService.shared.getOutfits(WeatherData.shared)
            Outfits.shared.getClothingCombo(WeatherData.shared)
            Outfits.shared.printSetting()
            
            print("-----")
            
        }
    }
}


