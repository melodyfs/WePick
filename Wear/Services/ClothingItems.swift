//
//  Clothes.swift
//  Wear
//
//  Created by Melody on 6/29/17.
//  Copyright © 2017 Melody Yang. All rights reserved.
//

import Foundation

class ClothingItems {
    
    //MARK: - Enums
    
        
    enum StyleFromTemp {
        case below60
        case from60To70
        case above70
    }
    
    enum Head: String {
        case hat = "hat"
        case cap = "cap"
        case knitHat = "knit hat"
        
    }
    
    enum UpperBody: String {
        case longSleeveShirt = "long Sleeve Shirt"
        case tShirt = "t Shirt"
        
        case jacket = "jacket"
        case sweater = "sweater"
        case trenchCoat = "trench coat"
        case vest = "vest"
        case blazer = "blazer"
        
        case dress = "dress"
        
    }
    
    enum LowerBody: String {
        case pants = "pants"
        case shorts = "shorts"
        case jeans = "jeans"
        case leggings = "leggings"
        
        case skirt = "skirt"
    }
    
    enum Footwear: String {
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
        
        case belt = "belt"
   
    }
    
    //MARK: - Actions
    
    //a function that tells which code path to go when a style is called
//    func createStyleByDescription(type: StyleFromDecription) {
//        switch type {
//        case .mist:
//            print("\(Head.hat), \(UpperBody.longSleeveShirt), \(LowerBody.pants), \(Footwear.sneakers), \(UpperBody.jacket)")
//        case .rain:
//            print("\(Head.cap), \(UpperBody.tShirt), \(LowerBody.pants), \(Footwear.boots), \(Accessories.umbrella)")
//        case .clearSky:
//            print("\(Head.hat), \(UpperBody.tShirt), \(LowerBody.shorts), \(Footwear.sandals)")
//        case .snow:
//            print("\(Head.hat), \(UpperBody.longSleeveShirt), \(LowerBody.pants), \(Footwear.boots)")
//        default:
//            print("")
//
//        }
//
//    }
//    
//    func createStyleByTemp(type: StyleFromTemp) {
//        switch type {
//        case .below60:
//            print("\(Head.hat), \(UpperBody.longSleeveShirt), \(LowerBody.pants), \(Footwear.sneakers), \(UpperBody.jacket)")
//        case .from60To70:
//            print("\(Head.cap), \(UpperBody.tShirt), \(LowerBody.pants), \(Footwear.boots), \(Accessories.umbrella)")
//        case .above70:
//            print("\(Head.hat), \(UpperBody.tShirt), \(LowerBody.shorts), \(Footwear.sandals)")
//        
//        }
//        
//        
//        
//    }
//    
//    
//    //call the createStyle func in enum based on weather description
//    class func getStyle(description: String) {
//        let description = WeatherData.shared.description
//        let style = CreateStyles()
//        
//        if description.range(of: "mist") != nil {
//            style.createStyleByDescription(type: .mist)
//        }
//        
//        if description.range(of: "rain") != nil {
//            style.createStyleByDescription(type: .rain)
//        }
//        
//        if description.range(of: "clear sky") != nil {
//            style.createStyleByDescription(type: .clearSky)
//            
//        }
//        
//        
//    }
//    
//    //call the create style func based on temperature
//    class func getStyleFromTemp(temp: Int) {
//        let temp = WeatherData.shared.temperature
//        let style = CreateStyles()
//        
//        if temp < 60 {
//            style.createStyleByTemp(type:.below60)
//        }
//        
//        if temp > 60 && temp < 70 {
//            style.createStyleByTemp(type: .from60To70)
//        }
//        
//        if temp > 70 {
//            style.createStyleByTemp(type: .above70)
//            
//        }
//        
//        
//    }
    
    //combining both temp and description to generate outfit combos
    //class func giveSuggestion(description ds: String, temperature temp: Int) {
    //        let style = CreateStyles()
    //        let description = WeatherData.shared.description
    //        let temp = WeatherData.shared.temperature
    //
    //
    //
    //    }
    
    
    


    
}
