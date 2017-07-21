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
    fileprivate static let key = "45ca707f502b31f8464232fb3f89b3b0"
    
    //MARK: - Class Methods
    //passing closure with data of weather. The data will only be called once the request is completed
    class func getWeather(fromZipcode zip: String, completion: @escaping Completion) {
        
        let session = URLSession.shared
        let urlString = URL(string: "\(BaseURL)\(zip),us&APPID=\(key)")

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
}
