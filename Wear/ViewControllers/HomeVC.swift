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
import GooglePlaces

class HomeVC: UIViewController, CLLocationManagerDelegate  {
    
    static var WDS = WeatherDataService()
    var locationManager = CLLocationManager()
    
    
    //MARK: - Properties
    var tempZip = ""
    var bgImage = "\(WeatherDataService.shared.category).png"
    
    
    var resultsViewController: GMSAutocompleteResultsViewController?
    var searchController: UISearchController?
    var resultView: UITextView?
    
    var city = ""
    
    
    
    //MARK: - Outlets
    @IBOutlet weak var weatherImageView: UIImageView!
    @IBOutlet weak var currentLocationLabel: UILabel!
    @IBOutlet weak var currentTemperatureLabel: UILabel!
    @IBOutlet weak var currentWeatherDescriptionLabel: UILabel!
    @IBOutlet weak var currentWeatherState: UILabel!
    @IBOutlet weak var startButton: UIButton!
    
    //MARK: - Override Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        
        locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.distanceFilter = 200
        locationManager.requestWhenInUseAuthorization()
        locationManager.startUpdatingLocation()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
       WeatherDataService.shared.compareEnumValues(WeatherData.shared)
       //weatherImageView.image = UIImage(named: bgImage)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
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
    
    @IBAction func searchButtonTapped(_ sender: UIButton) {
        let autocompleteController = GMSAutocompleteViewController()
        autocompleteController.delegate = self
        
        let filter = GMSAutocompleteFilter()
        filter.type = .city
        autocompleteController.autocompleteFilter = filter
        
        present(autocompleteController, animated: true, completion: nil)
    }
    
    @IBAction func settingButtonTapped(_ sender: Any) {
        
    }
    
    @IBAction func startButtonTapped(_ sender: Any) {
        
        let launchedBefore = UserDefaults.standard.bool(forKey: "launchedBefore")
        
        if launchedBefore  {
            let showResult = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "showResults") as! ResultVC
            navigationController?.pushViewController(showResult, animated: true)
            
        } else {
            
            let popOverVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "showTempChoice") as! PopUpVC
            self.addChildViewController(popOverVC)
            popOverVC.view.frame = self.view.frame
            self.view.addSubview(popOverVC.view)
            popOverVC.didMove(toParentViewController: self)
            UserDefaults.standard.set(true, forKey: "launchedBefore")
        }
        
    }
    
    @IBAction func seeSuggestionButtonTapped(_ sender: Any) {
        print("see suggestion button tapped")
        
    }
    
    func updateUI(weather: WeatherData) {
        DispatchQueue.main.async() {
            self.currentLocationLabel.text = WeatherData.shared.locationName
            self.currentTemperatureLabel.text = String(WeatherData.shared.temperature)
            self.currentWeatherState.text = WeatherData.shared.weatherStateDescription
            self.currentWeatherDescriptionLabel.text = WeatherData.shared.description
            
            SwitchClothesService.shared.mSortHead()
            SwitchClothesService.shared.mSortTop()
            SwitchClothesService.shared.mSortTopAcc()
            SwitchClothesService.shared.mSortBottomAcc()
            SwitchClothesService.shared.mSortFoot()
            
            SwitchClothesService.shared.fSortHead()
            SwitchClothesService.shared.fSortTop()
            SwitchClothesService.shared.fSortTopAcc()
            SwitchClothesService.shared.fSortBottomAcc()
            SwitchClothesService.shared.fSortFoot()
        
            WeatherDataService.shared.compareEnumValues(WeatherData.shared)
            Outfits.shared.decideTemp()

        }
    }
}

extension HomeVC: GMSAutocompleteViewControllerDelegate {
    
    // Handle the user's selection.
    func viewController(_ viewController: GMSAutocompleteViewController, didAutocompleteWith place: GMSPlace) {
        
        func getCityName() {
            self.city = place.name
        }
        getCityName()
        
        print("Place name: \(city)")
        
        WeatherAPI.getWeatherCity(from: city, completion: { data in
            
            return self.updateUI(weather: data)
        })

        dismiss(animated: true, completion: nil)
        
    }
    
    func viewController(_ viewController: GMSAutocompleteViewController, didFailAutocompleteWithError error: Error) {
        print("Error: ", error.localizedDescription)
    }
    
    // User canceled the operation.
    func wasCancelled(_ viewController: GMSAutocompleteViewController) {
        dismiss(animated: true, completion: nil)
    }
    
    // Turn the network activity indicator on and off again.
    func didRequestAutocompletePredictions(_ viewController: GMSAutocompleteViewController) {
        UIApplication.shared.isNetworkActivityIndicatorVisible = true
    }
    
    func didUpdateAutocompletePredictions(_ viewController: GMSAutocompleteViewController) {
        UIApplication.shared.isNetworkActivityIndicatorVisible = false
    }
    
}


