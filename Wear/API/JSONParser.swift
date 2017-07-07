//
//  JSONParser.swift
//  Wear
//
//  Created by Melody on 6/27/17.
//  Copyright © 2017 Melody Yang. All rights reserved.
//

import Foundation

class JSONParser {
    
    //MARK: - Class Methods
    //reading data from WeatherAPI
    class func parse(data: Data, completion: Completion) {
        guard let weatherData = getJSON(from: data) else {
          return
        }

           // TODO: - Remove Later
        let description = getDescription(from: weatherData)
        let weatherState = getWeatherState(from: weatherData)
        let temperature = getTemperature(from: weatherData)
        let locationName = getLocation(from: weatherData)
        let icon = getIcon(from: weatherData)
        
        //call shared instance and pass data to save it
        WeatherData.shared.set(description: description, andState: weatherState, andTemperature: Int(temperature), withLocation: locationName, plusIcon: icon)

        //Finally, call the completion handler and pass the data to the UI as a parameter
        completion(WeatherData.shared)
    }
    
    
    //MARK: - Private Methods
    //Check if the the data is JSON
    private class func getJSON(from data: Data) -> [String: Any]? {
        do {
            // Try to convert that data into a Swift dictionary
            if let parsedData = try JSONSerialization.jsonObject(with: data, options: []) as? [String: Any] {
                return parsedData
            }
            
        } catch let jsonError as NSError {
            // An error occurred while trying to convert the data into a Swift dictionary.
            print("JSON error description: \(jsonError.description)")
        }
        
        return nil
    }

    private class func getDescription(from json: [String: Any]) -> String {
        if let array = json["weather"] as? [Any] {
            if let arrDict = array[0] as? [String: Any] {
                if let description = arrDict["description"] as? String {
                    return description
                }
            }
        }
        
        return ""
    }
    
    private class func getWeatherState(from json: [String: Any]) -> String {
        if let array = json["weather"] as? [Any] {
            if let arrDict = array[0] as? [String: Any] {
                if let weatherState = arrDict["main"] as? String {
                    return weatherState
                }
            }
        }
        return ""
    }
    
    private class func getTemperature(from json: [String: Any]) -> Double {
        if let array = json["main"] as? [String: Any] {
            if let temp = array["temp"] as? Double {
                return 9/5 * (temp) - 459.67
            }
        }
        return 0
    }
    
    private class func getLocation(from json: [String: Any]) -> String {
        if let location = json["name"] as? String {
            return location
        }
        return ""
    }
    
    private class func getIcon(from json: [String: Any]) -> String {
        if let array = json["weather"] as? [Any] {
            if let arrDict = array[0] as? [String: Any] {
                if let icon = arrDict["icon"] as? String {
                    return icon
                }
             }
        }
        return ""
    }
}
