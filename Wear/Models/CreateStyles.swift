//
//  Clothes.swift
//  Wear
//
//  Created by Melody on 6/29/17.
//  Copyright © 2017 Melody Yang. All rights reserved.
//

import Foundation

class CreateStyles {
    
    //MARK: - Enums
    
    enum StyleFromDecription {
        
        //thunderstorm
        case thunderstormWithLightRain
        case thunderstormWithRain
        case thunderstormWithHeavyRain
        case lightThunderstorm
        case thunderstorm
        case heavyThunderstorm
        case raggesdThunderstorm
        case thunderstormWithLightDrizzle
        case thunderstormWithDrizzle
        case thunderstormWithHeavyDrizzle
        
        //drizzle
        case lightIntensityDrizzle
        case drizzle
        case heavyIntensityDrizzle
        case lightIntensityDrizzleRain
        case drizzleRain
        case heavyIntensityDrizzleRain
        case showerRainAndDrizzle
        case heavyShowerAndDrizzle
        case showerRainDrizzle
        
        //rain
        case lightRain
        case moderateRain
        case heavyIntensityRain
        case veryHeavyRain
        case extremeRain
        case freezingRain
        case lightIntensityShowerRain
        case showerRain
        case heavyIntensityShowerRain
        case raggedShowerRain
        
        //snow
        case lightSnow
        case snow
        case heavySnow
        case sleet
        case showerSleet
        case lightRainAndSnow
        case rainAndSnow
        case lightShowerSnow
        case showerSnow
        case heavyShowerSnow
        
        //atmosphere
        case mist
        case smoke
        case haze
        case sandAndDustWhirls
        case fog
        case sand
        case dust
        case volcanicAsh
        case squalls
        case tornado
        
        //clear
        case clearSky
        
        //clouds
        case fewClouds
        case scatteredClouds
        case brokenClouds
        case overcastClouds
        
        //extreme
        case tropicalStorm
        case hurricane
        case cold
        case hot
        case windy
        case hail
        
        //additional
        case calm
        case lightBreeze
        case gentleBreeze
        case moderateBreexe
        case freshBreexe
        case strongCreeze
        case highWindNearGale
        case gale
        case severeGale
        case storm
        case violentStorm
        
        //test code: generalization key word
//        case mist
        case rain
//        case clearSky
    
        
    }
    
    enum StyleFromTemp {
        case below60
        case from60To70
        case above70
    }
    
    enum Head: String {
        case hat = "hat"
        case cap = "cap"
        
    }
    
    enum UpperBody: String {
        case longSleeveShirt = "long Sleeve Shirt"
        case tShirt = "t Shirt"
        
        case jacket = "jacket"
        case sweater = "sweater"
        case trenchCoat = "trench coat"
        
        case dress = "dress"
        
    }
    
    enum LowerBody: String {
        case pants = "pants"
        case shorts = "shorts"
        case jeans = "jeans"
        case leggings = "leggings"
        
        case skirt = "skirt"
    }
    
    enum Feet: String {
        case sneakers = "snaakers"
        case boots = "boots"
        case sandals = "sandals"
        case rainBoots = "rain boots"
        
        case socks = "socks"
    
    }
    
    enum Accessories: String {
        case umbrella = "umbrella"
        case rainCoat = "rain coat"
        case scarf = "scarf"
        case gloves = "gloves"
        case helmet = "helmet"
        
    }
    
    //MARK: - Actions
    
    //a function that tells which code path to go when a style is called
    func createStyleByDescription(type: StyleFromDecription) {
        switch type {
        case .mist:
            print("\(Head.hat), \(UpperBody.longSleeveShirt), \(LowerBody.pants), \(Feet.sneakers), \(UpperBody.jacket)")
        case .rain:
            print("\(Head.cap), \(UpperBody.tShirt), \(LowerBody.pants), \(Feet.boots), \(Accessories.umbrella)")
        case .clearSky:
            print("\(Head.hat), \(UpperBody.tShirt), \(LowerBody.shorts), \(Feet.sandals)")
        default:
            print("")

        }

    }
    
    func createStyleByTemp(type: StyleFromTemp) {
        switch type {
        case .below60:
            print("\(Head.hat), \(UpperBody.longSleeveShirt), \(LowerBody.pants), \(Feet.sneakers), \(UpperBody.jacket)")
        case .from60To70:
            print("\(Head.cap), \(UpperBody.tShirt), \(LowerBody.pants), \(Feet.boots), \(Accessories.umbrella)")
        case .above70:
            print("\(Head.hat), \(UpperBody.tShirt), \(LowerBody.shorts), \(Feet.sandals)")
        
        }
        
        
        
    }
    
    
    //combining both temp and description to generate outfit combos
//    class func giveSuggestion(description ds: String, temperature temp: Int) {
//        let style = CreateStyles()
//        let description = WeatherData.shared.description
//        let temp = WeatherData.shared.temperature
//        
//        
//        
//    }
    
    
    
    //call the createStyle func in enum based on weather description
    class func getStyle(description: String) {
        let description = WeatherData.shared.description
        let style = CreateStyles()
        
        if description.range(of: "mist") != nil {
            style.createStyleByDescription(type: .mist)
        }
        
        if description.range(of: "rain") != nil {
            style.createStyleByDescription(type: .rain)
        }
        
        if description.range(of: "clear sky") != nil {
            style.createStyleByDescription(type: .clearSky)
            
        }
        
        
    }
    
    //call the create style func based on temperature
    class func getStyleFromTemp(temp: Int) {
        let temp = WeatherData.shared.temperature
        let style = CreateStyles()
        
        if temp < 60 {
            style.createStyleByTemp(type:.below60)
        }
        
        if temp > 60 && temp < 70 {
            style.createStyleByTemp(type: .from60To70)
        }
        
        if temp > 70 {
            style.createStyleByTemp(type: .above70)
            
        }
        
        
    }
    


    
}
