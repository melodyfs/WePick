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
    var bgImage = WeatherDataService.shared.category
    
    
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
        
        resultsViewController = GMSAutocompleteResultsViewController()
        resultsViewController?.delegate = self
        
        let filter = GMSAutocompleteFilter()
        filter.type = .city
        resultsViewController?.autocompleteFilter = filter
        
        searchController = UISearchController(searchResultsController: resultsViewController)
        searchController?.searchResultsUpdater = resultsViewController
        
        searchController?.searchBar.sizeToFit()
        navigationItem.titleView = searchController?.searchBar
        searchController?.searchBar.placeholder = "Search your city"
        
        // When UISearchController presents the results view, present it in
        // this view controller, not one further up the chain.
        definesPresentationContext = true
        
        // Prevent the navigation bar from being hidden when searching.
        searchController?.hidesNavigationBarDuringPresentation = false
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
       WeatherDataService.shared.compareEnumValues(WeatherData.shared)
       weatherImageView.image = UIImage(named: "mist")
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
    
    @IBAction func startButtonTapped(_ sender: Any) {
        let popOverVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "showTempChoice") as! PopUpVC
        self.addChildViewController(popOverVC)
        popOverVC.view.frame = self.view.frame
        self.view.addSubview(popOverVC.view)
        popOverVC.didMove(toParentViewController: self)
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
            
//            Outfits.shared.getClothingCombo(WeatherData.shared)
//            Outfits.shared.fGetClothingCombo(WeatherData.shared)
            WeatherDataService.shared.compareEnumValues(WeatherData.shared)
            Outfits.shared.decideTemp()
            self.bgImage = WeatherDataService.shared.category
//            self.weatherImageView.image = UIImage(named: "\(self.bgImage).png")
        }
    }
}



// Handle the user's selection.
extension HomeVC : GMSAutocompleteResultsViewControllerDelegate {
    func resultsController(_ resultsController: GMSAutocompleteResultsViewController, didAutocompleteWith place: GMSPlace) {
        searchController?.isActive = false
        
        func getCityName() {
            self.city = place.name
        }
        getCityName()
        
        print("Place name: \(city)")
        
        WeatherAPI.getWeatherCity(from: city, completion: { data in
    
            return self.updateUI(weather: data)
        })

    }
    
    func resultsController(_ resultsController: GMSAutocompleteResultsViewController, didFailAutocompleteWithError error: Error){
        print("Please enter a valid city", error.localizedDescription)
    }
    
    // Turn the network activity indicator on and off again.
    func didRequestAutocompletePredictions(_ viewController: GMSAutocompleteViewController) {
        UIApplication.shared.isNetworkActivityIndicatorVisible = true
    }
    
    func didUpdateAutocompletePredictions(_ viewController: GMSAutocompleteViewController) {
        UIApplication.shared.isNetworkActivityIndicatorVisible = false
    }
}


