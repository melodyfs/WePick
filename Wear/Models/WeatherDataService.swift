//
//  ClothingItems.swift
//  Wear
//
//  Created by Melody on 6/30/17.
//  Copyright © 2017 Melody Yang. All rights reserved.
//

import Foundation

class WeatherDataService {
    
    
    func reformatWeatherDescription(_ ds: WeatherData) -> String {
        let ds1 = WeatherData.shared.description.capitalized
        let ds2 = ds1.replacingOccurrences(of: " ", with: "")
        let ds3 = ds2.lowercased()
        
        return ds3

    }
    
    func compareEnumValues(_ ds: WeatherData) -> String{
        let dsReformat = reformatWeatherDescription(ds)
        var finalDs = ""
        
        for str in iterateEnum(ThunderstormDescription.self) {
            if str.rawValue == dsReformat {
                finalDs = str.rawValue
            }
            for str in iterateEnum(DrizzleDescription.self) {
                if str.rawValue == dsReformat {
                    finalDs = str.rawValue
                }
                for str in iterateEnum(RainDescription.self) {
                    if str.rawValue == dsReformat {
                        finalDs = str.rawValue
                    }
                    for str in iterateEnum(SnowDescription.self) {
                        if str.rawValue == dsReformat {
                            finalDs = str.rawValue
                        }
                        for str in iterateEnum(AtmosphereDescription.self) {
                            if str.rawValue == dsReformat {
                                finalDs = str.rawValue
                            }
                            for str in iterateEnum(CloudsDescription.self) {
                                if str.rawValue == dsReformat {
                                    finalDs = str.rawValue
                                }
                                for str in iterateEnum(ExtremeDescription.self) {
                                    if str.rawValue == dsReformat {
                                        finalDs = str.rawValue
                                    }
                                    for str in iterateEnum(ThunderstormDescription.self) {
                                        if str.rawValue == dsReformat {
                                            finalDs = str.rawValue
                                        } else {
                                            print("description does not exist")
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        return finalDs
    }
    
    func Head(_ ds: WeatherData) {
        var ds = compareEnumValues(ds)
        let thunder = ThunderstormDescription(rawValue: "")!
        
        switch thunder {
        case .thunderstormWithLightRain:
            fallthrough
        case .thunderstormWithRain:
            fallthrough
        case .thunderstormWithHeavyRain:
            fallthrough
        case .lightThunderstorm:
            fallthrough
        case .thunderstorm:
            fallthrough
        case .heavyThunderstorm:
            fallthrough
        case .raggesdThunderstorm:
            fallthrough
        case .thunderstormWithLightDrizzle:
            fallthrough
        case .thunderstormWithDrizzle:
            fallthrough
        case .thunderstormWithHeavyDrizzle:
            print("\(ClothingItems.Head.hat)")
            
        }
        
    }
    
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

