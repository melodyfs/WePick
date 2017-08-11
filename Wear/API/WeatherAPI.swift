//
//  GettingWeatherService.swift
//  Ear
//
//  Created by Melody on 6/26/17.
//  Copyright © 2017 Melody Yang. All rights reserved.
//

import Foundation


//The closure has the type WeatherData and returns nothing
typealias Completion = (WeatherData) -> Void


class WeatherAPI {
    
    //MARK: - Properties
    fileprivate static let BaseURL = "http://api.openweathermap.org/data/2.5/weather?zip="
    fileprivate static let cityURL = "http://api.openweathermap.org/data/2.5/weather?q="
    fileprivate static let zipFiveURL = "http://api.openweathermap.org/data/2.5/forecast?zip="
    fileprivate static let cityFiveURL = "http://api.openweathermap.org/data/2.5/forecast?q="
    
    fileprivate static let key = "45ca707f502b31f8464232fb3f89b3b0"
    
    //MARK: - Class Methods
    //passing closure with data of weather. The data will only be called once the request is completed
    class func getWeather(fromZipcode zip: String, completion: @escaping Completion) {
        
        let session = URLSession.shared
        let urlString = URL(string: "\(BaseURL)\(zip)&APPID=\(key)")
        

        if let url = urlString {
            let request = URLRequest(url: url)
            
            let task = session.dataTask(with: request) { (data, response, error) in
                
                guard error == nil else {
                    // Got some kind of error while trying to get data from the server.
                    print("Error: \(error!)")
                    return
                }
                
                guard data != nil else {
                    print("data couldn't be downloaded")
                    return
                }
                
                //completion closure is passed to then call it after parsing the data
                JSONParser.parse(data: data!, completion: completion)
            }
            
            task.resume()
        }
        
    }
    
    class func getWeatherZipFiveDays(fromZipcode zip: String, completion: @escaping Completion) {
        
        let session = URLSession.shared
        let urlString = URL(string: "\(zipFiveURL)\(zip)&APPID=\(key)")
        
        
        if let url = urlString {
            let request = URLRequest(url: url)
            
            let task = session.dataTask(with: request) { (data, response, error) in
                
                guard error == nil else {
                    // Got some kind of error while trying to get data from the server.
                    print("Error: \(error!)")
                    return
                }
                
                guard data != nil else {
                    print("data couldn't be downloaded")
                    return
                }
                
                //completion closure is passed to then call it after parsing the data
  //              JSONParser.parse(data: data!, completion: completion)
            }
            
            task.resume()
        }

    }
    
    class func getWeatherCity(from cityName: String, completion: @escaping Completion, failedCompletion: @escaping () -> Void) {
        
        let session = URLSession.shared
        let urlCity = URL(string: "\(cityURL)\(cityName)&APPID=\(key)")
        
        if let url = urlCity {
          
            let request = URLRequest(url: url)
            
            let task = session.dataTask(with: request) { (data, response, error) in
                
                guard error == nil else {
                    // Got some kind of error while trying to get data from the server.
                    print("Error: \(error!)")
                    return
                }
                
                guard data != nil else {
                    print("data couldn't be downloaded")
                    return
                }
                
                //completion closure is passed to then call it after parsing the data
                JSONParser.parse(data: data!, completion: completion)
            }
            
            
            
            task.resume()
            
        } else {
            failedCompletion()
            print("Failed to load weather data.")
            //Run the closure when the url city fails to get from API
        }
    }
    
    class func getWeatherCityFiveDays(from cityName: String, completion: @escaping Completion, failedCompletion: @escaping () -> Void) {
        
        let session = URLSession.shared
        let urlCity = URL(string: "\(cityFiveURL)\(cityName)&APPID=\(key)")
        
        if let url = urlCity {
            
            let request = URLRequest(url: url)
            
            let task = session.dataTask(with: request) { (data, response, error) in
                
                guard error == nil else {
                    // Got some kind of error while trying to get data from the server.
                    print("Error: \(error!)")
                    return
                }
                
                guard data != nil else {
                    print("data couldn't be downloaded")
                    return
                }
                
                //completion closure is passed to then call it after parsing the data
         //       JSONParser.parse(data: data!, completion: completion)
            }
            
            
            
            task.resume()
            
        } else {
            failedCompletion()
            print("Failed to load weather data.")
            //Run the closure when the url city fails to get from API
        }
    }

    
    

    
}
