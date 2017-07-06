//
//  Clothes.swift
//  Wear
//
//  Created by Melody on 6/29/17.
//  Copyright © 2017 Melody Yang. All rights reserved.
//

import Foundation

enum ClothingItems {
    
    enum Head: String {
        case none
        case hat
        case cap
        case knitHat
        case sunglasses
    }
    
    enum Top: String {
        case none
        case longSleeveShirt
        case shortSleeveShirt
    }
    
    enum TopAcc : String {
        case none
        case jacket = "jacket"
        case sweater = "sweater"
        case trenchCoat = "trench coat"
        case vest = "vest"
        case blazer = "blazer"
        case coat
    }
    
    //feature
    enum FullBody: String {
        case dress = "dress"
    }
    
    
    enum bottom : String {
        case none
        case pants = "pants"
        case shorts = "shorts"
        case jeans = "jeans"
        case leggings = "leggings"
        
        case skirt = "skirt"
    }
    
    enum Footwear: String {
        case none
        case sneakers = "snaakers"
        case boots = "boots"
        case sandals = "sandals"
        case rainBoots = "rain boots"
        
        case socks = "socks"
    
    }
    
    enum Accessories: String {
        case none
        case umbrella = "umbrella"
        case rainCoat = "rain coat"
        case scarf = "scarf"
        case gloves = "gloves"
        case helmet = "helmet"
        
        case belt = "belt"
   
    }
    
    //MARK: - Actions
    
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
    

}