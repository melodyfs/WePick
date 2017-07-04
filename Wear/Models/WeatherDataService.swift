//
//  ClothingItems.swift
//  Wear
//
//  Created by Melody on 6/30/17.
//  Copyright © 2017 Melody Yang. All rights reserved.
//

import Foundation

class WeatherDataService {
    
    static var enumValue = WeatherDataService()
    
    var category = ""
    
    let thunderstorm = "Thunderstorm"
    let drizzle = "Drizzle"
    let rain = "Rain"
    let snow = "Snow"
    let clouds = "Clouds"
    
    
    func reformatWeatherDescription(_ ds: WeatherData) -> String {
        let ds1 = WeatherData.shared.description.capitalized
        let ds2 = ds1.replacingOccurrences(of: " ", with: "")
        
        return ds2
    }
    
    func compareEnumValues(_ ds: WeatherData) {
        let dsReformat = reformatWeatherDescription(ds)
        
        if dsReformat.contains(thunderstorm) {
            iterateThunderstormEnum(dsReformat)
            category = thunderstorm
        }
        
        if dsReformat.contains(drizzle) {
            iterateDrizzleEnum(dsReformat)
            category = drizzle
        }
        
        if dsReformat.contains(rain) {
            iterateRainEnum(dsReformat)
            category = rain
        }
        
        if dsReformat.contains(snow) || dsReformat.contains("Sleet") {
            iterateSnowEnum(dsReformat)
            category = snow
        }
        
        if dsReformat.contains(clouds) {
            iterateCloudsEnum(dsReformat)
            category = clouds
        }
        
    }
    
    func getOutfits(weatherCondition condition: WeatherData) {
        compareEnumValues(condition)
        
        let hat = ClothingItems.Head.hat.rawValue
        let cap = ClothingItems.Head.cap.rawValue
        let knitHat = ClothingItems.Head.knitHat.rawValue
        
        let tShirt = ClothingItems.UpperBody.tShirt.rawValue
        let jacket = ClothingItems.UpperBody.jacket.rawValue
        let longSleeveShirt = ClothingItems.UpperBody.longSleeveShirt.rawValue
        let sweater = ClothingItems.UpperBody.sweater.rawValue
        
        let pants = ClothingItems.LowerBody.pants.rawValue
        
        let sneakers = ClothingItems.Footwear.sneakers.rawValue
        let rainBoots = ClothingItems.Footwear.rainBoots.rawValue
        let boots = ClothingItems.Footwear.boots.rawValue

        
        var head = hat
        var upperBody = tShirt
        var upperAccessory = ""
        var lowerBody = pants
        var footwear = sneakers
        
        func defaultOutfits() {
            print(head + upperBody + upperAccessory + lowerBody + footwear)
        }
        
        if category == thunderstorm || category == drizzle {
            head = cap
            upperBody = longSleeveShirt
            upperAccessory = jacket
            footwear = rainBoots
        }
        
        if category == snow {
            head = knitHat
            upperBody = sweater
            upperAccessory = jacket
            footwear = boots
        }
        
        defaultOutfits()
        
    }
    
    private func iterateThunderstormEnum(_ ds: String) {
        for str in iterateEnum(ThunderstormDescription.self) {
            if str.rawValue.contains("Thunderstorm") {
                break
            }
        }
    }
    
    private func iterateDrizzleEnum(_ ds: String) {
        for str in iterateEnum(DrizzleDescription.self) {
            if str.rawValue.contains("Drizzle") {
                break
            }
        }
    }
    
    private func iterateRainEnum(_ ds: String) {
        for str in iterateEnum(RainDescription.self) {
            if str.rawValue.contains("Rain") {
                break
            }
        }
    }
    
    private func iterateSnowEnum(_ ds: String) {
        for str in iterateEnum(SnowDescription.self) {
            if str.rawValue.contains("Snow") || str.rawValue.contains("Sleet") {
                break
            }
        }
    }
    
    private func iterateCloudsEnum(_ ds: String) {
        for str in iterateEnum(CloudsDescription.self) {
            if str.rawValue.contains("Clouds") {
                break
            }
        }
    }

    
//    for str in iterateEnum(DrizzleDescription.self) {
//        if str.rawValue == dsReformat {
//            category = "Drizzle"
//            
//                    if let drizzle = DrizzleDescription(rawValue: "showerRainDrizzle") {
//                        
//                        switch drizzle {
//                        case .lightIntensityDrizzle: fallthrough
//                        case .drizzle: fallthrough
//                        case .heavyIntensityDrizzle: fallthrough
//                        case .lightIntensityDrizzleRain: fallthrough
//                        case .drizzleRain: fallthrough
//                        case .heavyIntensityDrizzleRain: fallthrough
//                        case .showerRainAndDrizzle: fallthrough
//                        case .heavyShowerAndDrizzle:fallthrough
//                        case .showerRainDrizzle:
//                            print("\(ClothingItems.Head.hat)")
//                        }
//
//                    }
//                }
//        }
//            
//            
//            for str in iterateEnum(RainDescription.self) {
//                if str.rawValue == dsReformat {
//                    print(str.rawValue)
//                
//                    if let rain = RainDescription(rawValue: "lightRain") {
//                        
//                        switch rain {
//                        case .lightRain: fallthrough
//                        case .moderateRain: fallthrough
//                        case .heavyIntensityRain: fallthrough
//                        case .veryHeavyRain: fallthrough
//                        case .extremeRain: fallthrough
//                        case .freezingRain: fallthrough
//                        case .lightIntensityShowerRain: fallthrough
//                        case .showerRain: fallthrough
//                        case .heavyIntensityShowerRain: fallthrough
//                        case .raggedShowerRain: fallthrough
//                        case .rain:
//                            print("\(ClothingItems.Head.hat)")
//                        }
//                        
//                    }
//                    
//                }
//            }
//                    for str in iterateEnum(SnowDescription.self) {
//                        if str.rawValue == dsReformat {
//                            finalDs = str.rawValue
//                        }
//                        for str in iterateEnum(AtmosphereDescription.self) {
//                            if str.rawValue == dsReformat {
//                                finalDs = str.rawValue
//                            }
//                            for str in iterateEnum(CloudsDescription.self) {
//                                if str.rawValue == dsReformat {
//                                    finalDs = str.rawValue
//                                }
//                                for str in iterateEnum(ExtremeDescription.self) {
//                                    if str.rawValue == dsReformat {
//                                        finalDs = str.rawValue
//                                    }
//                                    for str in iterateEnum(ThunderstormDescription.self) {
//                                        if str.rawValue == dsReformat {
//                                            finalDs = str.rawValue
//                                        } else {
//                                            print("description does not exist")
//                                        }
//                                    }
//                                }
//                            }
//                        }
//                    }
//                }
//            }
//        }
//        return finalDs
    
    
    
//    func Head(_ ds: WeatherData) {
////        let ds = compareEnumValues(ds)
////        print(ds)
//        
//        if category == "Drizzle" {
//            if let thunder = ThunderstormDescription(rawValue: "thunderstormWithHeavyDrizzle") {
//                switch thunder {
//                case .ThunderstormWithLightRain: fallthrough
//                case .ThunderstormWithRain: fallthrough
//                case .ThunderstormWithHeavyRain: fallthrough
//                case .LightThunderstorm: fallthrough
//                case .Thunderstorm: fallthrough
//                case .HeavyThunderstorm: fallthrough
//                case .RaggesdThunderstorm: fallthrough
//                case .ThunderstormWithLightDrizzle: fallthrough
//                case .ThunderstormWithDrizzle: fallthrough
//                case .ThunderstormWithHeavyDrizzle:
//                    print("\(ClothingItems.Head.cap)")
//                    
//                }
//            }
//
//        }
//
//        let rain = RainDescription(rawValue: "")!
//        
    //
//
//
//        switch rain {
//        case .lightRain:
//            fallthrough
//        case .moderateRain:
//            fallthrough
//        case .heavyIntensityRain:
//            fallthrough
//        case .veryHeavyRain:
//            fallthrough
//        case .extremeRain:
//            fallthrough
//        case .freezingRain:
//            fallthrough
//        case .lightIntensityShowerRain:
//            fallthrough
//        case .showerRain:
//            fallthrough
//        case .heavyIntensityShowerRain:
//            fallthrough
//        case .raggedShowerRain:
//            print("\(ClothingItems.Head.cap)")
//        default:
//            print("")
//        }
//        
//        
//        
//    }
    
//        if (ds.range(of: "thunderstorm") != nil) || (ds.range(of: "rain") != nil) {
//            
//        }
    
    
//    func UpperBody(_ ds: WeatherData) {
//        var ds = compareEnumValues(ds)
//        let drizzle = DrizzleDescription(rawValue: "")!
//        
//        switch drizzle{
//        case .lightIntensityDrizzle:
//            fallthrough
//        case .drizzle:
//            fallthrough
//        case .heavyIntensityDrizzle:
//            fallthrough
//        case .lightIntensityDrizzle:
//            fallthrough
//        
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
    
    
    


