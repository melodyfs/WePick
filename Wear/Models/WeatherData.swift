//
//  WeatherDataStorage.swift
//  Wear
//
//  Created by Melody on 6/27/17.
//  Copyright © 2017 Melody Yang. All rights reserved.
//

import Foundation

class WeatherData {
    
    var locationName: String = ""
    var description: String = ""
    var weatherStateDescription: String = ""
    var temperature: Double = 0.0
    
    static var shared = WeatherData()
    
    //save the data in shared instance
    func set(description: String, andState state: String, andTemperature temp: Double, withLocation location: String) {
        self.description = description
        self.temperature = temp
        self.weatherStateDescription = state
        self.locationName = location
    }
    
    func printSettings()
    {
        print(self.description)
        print(self.temperature)
        print(self.weatherStateDescription)
        print(self.locationName)
    }
    
}


