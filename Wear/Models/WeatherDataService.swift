//
//  ClothingItems.swift
//  Wear
//
//  Created by Melody on 6/30/17.
//  Copyright © 2017 Melody Yang. All rights reserved.
//

import Foundation

enum Category: String {
    case unknown = ""
    case thunderstorm = "Thunderstorm"
    case drizzle = "Drizzle"
    case rain = "Rain"
    case snow = "Snow"
    case clouds = "Clouds"
    case mist = "Mist"
    case haze = "Haze"
    case sandAndDustWhirls = "SandAndDustWhirls"
    case fog = "Fog"
    case sand = "Sand"
    case dust = "Dust"
    case naturalDisaster = "VolcanicAsh"
    case squalls = "Squalls"
    case tornado = "Tornado"
    
    case tropicalStorm = "TropicalStorm"
    case hurricane = "Hurricane"
    case cold = "Cold"
    case hot = "Hot"
    case windy = "Windy"
    case hail = "Hail"
    
    case calm = "Calm"
    case lightBreeze = "Lightbreeze"
    case gentleBreeze = "GentleBreeze"
    case moderateBreeze = "ModerateBreexe"
    case freshBreeze = "FreshBreexe"
    case strongBreeze = "StrongCreeze"
    case highWindNearGale = "HighWindNearGale"
    case gale = "Gale"
    case severeGale = "SevereGale"
    case storm = "Storm"
    case violentStorm = "ViolentStorm"
    
    case clearSky = "ClearSky"
}

//Checking the category and set the value
class WeatherDataService {
    
    let thunderstorm = "Thunderstorm"
    let drizzle = "Drizzle"
    let rain = "Rain"
    let snow = "Snow"
    let clouds = "Clouds"
    let mist = "Mist"
    let smoke = "Smoke"
    let haze = "Haze"
    let sandAndDustWhirls = "SandAndDustWhirls"
    let fog = "Fog"
    let sand = "Sand"
    let dust = "Dust"
    let volcanicAsh = "VolcanicAsh"
    let squalls = "Squalls"
    let tornado = "Tornado"
    let tropicalStorm = "TropicalStorm"
    let hurricane = "Hurricane"
    let cold = "Cold"
    let hot = "Hot"
    let windy = "Windy"
    let hail = "Hail"
    
    let calm = "Calm"
    let lightBreeze = "Lightbreeze"
    let gentleBreeze = "GentleBreeze"
    let moderateBreeze = "ModerateBreexe"
    let freshBreeze = "FreshBreexe"
    let strongBreeze = "StrongCreeze"
    let highWindNearGale = "HighWindNearGale"
    let gale = "Gale"
    let severeGale = "SevereGale"
    let storm = "Storm"
    let violentStorm = "ViolentStorm"
    
    let clearSky = "ClearSky"
    
    //For categories that has common enum value strings
    var category: Category = .unknown
    
    //Avoid category conflicts when comparing enums and getting outfits
    var categoryAtm = ""
    var dsR = ""

    static var shared = WeatherDataService()
    
    
    //Changes the category from the saved data to look like the API value
    private func reformatWeatherDescription(_ ds: WeatherData) -> String {
        let ds1 = WeatherData.shared.description.capitalized
        let ds2 = ds1.replacingOccurrences(of: " ", with: "")
        
        return ds2
    }
    
    
    //Assigns a generic category if they are in the enums
    private func compareEnumValues(_ ds: WeatherData) {
        let dsReformat = reformatWeatherDescription(ds)
        
        if dsReformat.contains(thunderstorm) {
            category = iterateThunderstormEnum()
        }
        
        if dsReformat.contains(drizzle) {
            category = iterateDrizzleEnum()

        }
        
        if dsReformat.contains(rain) {
            category = iterateRainEnum()

        }
        
        if dsReformat.contains(snow) || dsReformat.contains("Sleet") {
            category = iterateSnowEnum()
        }
        
        if dsReformat.contains(clouds) {
            category = iterateCloudsEnum()
        }
        
        if (dsReformat.contains(mist) || dsReformat.contains(haze) || dsReformat.contains(fog) || dsReformat.contains("Sand") || dsReformat.contains(dust) || dsReformat.contains(smoke) || dsReformat.contains(volcanicAsh) || dsReformat.contains(squalls) || dsReformat.contains(tornado)) {
            dsR = dsReformat
            category = iterateAtmosphereEnum()
            
        }
        
        if dsReformat.contains(tropicalStorm) || dsReformat.contains(hurricane) || dsReformat.contains(cold) || dsReformat.contains(windy) || dsReformat.contains(hot) || dsReformat.contains(hail) {
            dsR = dsReformat
            category = iterateExtremeEnum()
            
        }
        
        if dsReformat.contains(calm) || dsReformat.contains(clearSky) || dsReformat.contains("breeze") || dsReformat.contains("gale") || dsReformat.contains(storm) || dsReformat.contains(violentStorm) {
            dsR = dsReformat
            category = iterateAdditionalEnum()
        }
        
        
        //TODO: - Fill in category later
    }
    
    func getOutfits(_ ds: WeatherData) {
        //First, let's get a generic category
        compareEnumValues(WeatherData.shared)
        
        //Second, pass the generic to the outfit class
        Outfits.shared.category = category
        Outfits.shared.categoryAtm = categoryAtm
        
        print(Outfits.shared.category)
        
        
    }
   
    
    
    private func iterateThunderstormEnum() -> Category {
        for str in iterateEnum(ThunderstormDescription.self) {
            if str.rawValue.contains(thunderstorm) {
                return .thunderstorm
            }
        }
        return .unknown
    }
    
    private func iterateDrizzleEnum() -> Category {
        for str in iterateEnum(DrizzleDescription.self) {
            if str.rawValue.contains(drizzle) {
                return .drizzle
            }
        }
        return .unknown
    }
    
    private func iterateRainEnum() -> Category {
        for str in iterateEnum(RainDescription.self) {
            if str.rawValue.contains(rain) {
                return .rain
            }
        }
        return .unknown
    }
    
    private func iterateSnowEnum() -> Category {
        for str in iterateEnum(SnowDescription.self) {
            if str.rawValue.contains(snow) || str.rawValue.contains("Sleet") {
                return .snow
            }
        }
        return .unknown
    }
    
    private func iterateCloudsEnum() -> Category {
        for str in iterateEnum(CloudsDescription.self) {
            if str.rawValue.contains(clouds) {
                return .clouds
            }
        }
        return .unknown
    }
    
    private func iterateAtmosphereEnum() -> Category {
        for _ in iterateEnum(AtmosphereDescription.self) {
            if dsR.contains(mist) || dsR.contains(haze) || dsR.contains(fog) {
                categoryAtm = mist
                return .mist
            }

                
            if dsR.contains(sand) || dsR.contains(sandAndDustWhirls) || dsR.contains(dust) || dsR.contains(smoke) {
                categoryAtm = sand
                return .sand
            }
            
            
            if dsR.contains(volcanicAsh) || dsR.contains(squalls) || dsR.contains(tornado) {
                categoryAtm = volcanicAsh
                return .naturalDisaster
            }
            
        }
        
        return .unknown
    }
    
    private func iterateExtremeEnum() -> Category {
        for _ in iterateEnum(ExtremeDescription.self) {
            if dsR.contains(tropicalStorm) ||  dsR.contains(hurricane) {
                return .tropicalStorm
            }
            
            if dsR.contains(cold) || dsR.contains(windy) {
                return .cold
            }
            
            if dsR.contains(hot) {
                return .hot
            }
            
            if dsR.contains(hail) {
                return .hail
            }
        }
        return .unknown
    }
    
    private func iterateAdditionalEnum() -> Category {
        for _ in iterateEnum(AdditionalDescription.self) {
            if dsR.contains(calm) || dsR.contains(lightBreeze) || dsR.contains(gentleBreeze) || dsR.contains(moderateBreeze) || dsR.contains(freshBreeze) || dsR.contains(clearSky){
                return .calm
            }
            
            if dsR.contains(strongBreeze) || dsR.contains(highWindNearGale) || dsR.contains(gale) || dsR.contains(severeGale) {
                return .strongBreeze
            }
            
            if dsR.contains(storm) || dsR.contains(violentStorm) {
                return .storm
            }
        }
       return .unknown
    }

     //generic to reduce if statements while checking category
//    class Compare<T> (ds: dsReformat, iteration itr: ) {
//    
//    }
    
    
    func iterateEnum<T: Hashable>(_: T.Type) -> AnyIterator<T> {
        var cast: ((Int) -> T)!
        switch MemoryLayout<T>.size {
        case 0: return AnyIterator(IteratorOverOne(_elements: unsafeBitCast((), to: T.self)))
        case 1: cast = { unsafeBitCast(UInt8(truncatingBitPattern: $0), to: T.self) }
        case 2: cast = { unsafeBitCast(UInt16(truncatingBitPattern: $0), to: T.self) }
        case 4: cast = { unsafeBitCast(UInt32(truncatingBitPattern: $0), to: T.self) }
        case 8: cast = { unsafeBitCast(UInt64($0), to: T.self) }
        default: fatalError("cannot be here")
        }
        
        var i = 0
        return AnyIterator {
            let next = withUnsafeBytes(of: &i) { $0.load(as: T.self) }
            if next.hashValue != i { return nil }
            i += 1
            return next
        }
    }
    
}
    
    
    


