//
//  WeatherEnums.swift
//  Wear
//
//  Created by Melody on 6/30/17.
//  Copyright © 2017 Melody Yang. All rights reserved.
//

import Foundation

enum ThunderstormDescription: String {
    case ThunderstormWithLightRain
    case ThunderstormWithRain
    case ThunderstormWithHeavyRain
    case LightThunderstorm
    case Thunderstorm
    case HeavyThunderstorm
    case RaggesdThunderstorm
    case ThunderstormWithLightDrizzle
    case ThunderstormWithDrizzle
    case ThunderstormWithHeavyDrizzle
}

enum DrizzleDescription: String {
    case LightIntensityDrizzle
    case Drizzle
    case HeavyIntensityDrizzle
    case LightIntensityDrizzleRain
    case DrizzleRain
    case HeavyIntensityDrizzleRain
    case ShowerRainAndDrizzle
    case HeavyShowerAndDrizzle
    case ShowerRainDrizzle
    
}

enum RainDescription: String {
    case LightRain
    case ModerateRain
    case HeavyIntensityRain
    case VeryHeavyRain
    case ExtremeRain
    case FreezingRain
    case LightIntensityShowerRain
    case ShowerRain
    case HeavyIntensityShowerRain
    case RaggedShowerRain
    
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

