//
//  WeatherEnums.swift
//  Wear
//
//  Created by Melody on 6/30/17.
//  Copyright © 2017 Melody Yang. All rights reserved.
//

import Foundation

enum ThunderstormDescription: String {
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
}

enum DrizzleDescription: String {
    case lightIntensityDrizzle
    case drizzle
    case heavyIntensityDrizzle
    case lightIntensityDrizzleRain
    case drizzleRain
    case heavyIntensityDrizzleRain
    case showerRainAndDrizzle
    case heavyShowerAndDrizzle
    case showerRainDrizzle
    
}

enum RainDescription: String {
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
    
    //1st ver. general
    case rain

    
}

enum SnowDescription: String {
    case snow
    case heavySnow
    case sleet
    case showerSleet
    case lightRainAndSnow
    case rainAndSnow
    case lightShowerSnow
    case showerSnow
    case heavyShowerSnow
    case lightSnow
    
}

enum AtmosphereDescription: String {
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
    
}

enum CloudsDescription: String {
    case fewClouds
    case scatteredClouds
    case brokenClouds
    case overcastClouds
    
}

enum ExtremeDescription: String {
    case tropicalStorm
    case hurricane
    case cold
    case hot
    case windy
    case hail
    
}

enum AdditionalDescription: String {
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
    
    case clearSky
    
}

//extension ThunderstormDescription : Sequence {
//    func makeIterator() -> SectionsGenerator {
//        return SectionsGenerator()
//    }
//    
//    struct SectionsGenerator: IteratorProtocol {
//        var currentSection = ""
//        
//        mutating func next() -> ThunderstormDescription? {
//            guard let item = ThunderstormDescription(rawValue: currentSection) else {
//                return nil
//            }
//            currentSection += 1
//            return item
//        }
//    }
//}
