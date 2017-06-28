//
//  GettingWeatherService.swift
//  Ear
//
//  Created by Melody on 6/26/17.
//  Copyright © 2017 Melody Yang. All rights reserved.
//

import Foundation

//OpenWeatherMap API
class WeatherAPI {
    
    fileprivate static let BaseURL = "http://api.openweathermap.org/data/2.5/weather?zip="
    fileprivate static let key = "45ca707f502b31f8464232fb3f89b3b0"
    
    class func getWeather(fromZipcode zip: String) {
        
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
                
                // Success. Got a response from the server
                //print("Raw Data:\(data!)")
//                guard let jsonData = String(data: data!, encoding: String.Encoding.utf8) else {
//                    print("json data couldn't be accessed")
//                    return
//                }
                
                //print("Human readable data: \(dataString!)")
                JSONParser.parse(data: data!)
            }
            
            task.resume()
        }
    }
    
    
}
