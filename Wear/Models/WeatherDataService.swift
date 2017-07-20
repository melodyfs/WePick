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
        
        for aCategory in iterateEnum(Category.self){
            if dsReformat.contains(aCategory.rawValue){
                category = aCategory
            }
        }
    }
    
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
    
    
    


