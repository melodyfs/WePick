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

    func reformatWeatherDescription(_ ds: WeatherData) -> String {
        let ds1 = WeatherData.shared.description.capitalized
        let ds2 = ds1.replacingOccurrences(of: " ", with: "")
        
        return ds2
    }
    
   func compareEnumValues(_ ds: WeatherData) {
        let dsReformat = reformatWeatherDescription(ds)
//        var finalDs = ""
        iterateThunderstormEnum(dsReformat)
        iterateDrizzleEnum(dsReformat)
        iterateRainEnum(dsReformat)
        iterateSnowEnum(dsReformat)
    }
    
    private func iterateThunderstormEnum(_ ds: String) {
        for str in iterateEnum(ThunderstormDescription.self) {
            if str.rawValue.contains("Thunderstorm") {
                print("\(ClothingItems.Head.cap)")
            }
        }
    }
    
    private func iterateDrizzleEnum(_ ds: String) {
        for str in iterateEnum(DrizzleDescription.self) {
            if str.rawValue.contains("Drizzle") {
                print("\(ClothingItems.Head.hat)")
            }
        }
    }
    
    private func iterateRainEnum(_ ds: String) {
        for str in iterateEnum(RainDescription) {
            if str.rawValue.contains("Rain") {
                print("\(ClothingItems.Accessories.umbrella)")
            }
        }
    }
    
    private func iterateSnowEnum(_ ds: String) {
        for str in iterateEnum(SnowDescription) {
            if str.rawValue.contains("Snow") || str.rawValue.contains("Sleet") {
                print("\(ClothingItems.Footwear.boots)")
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
    
    
    


