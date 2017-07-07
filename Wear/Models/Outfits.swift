//
//  Outfits.swift
//  Wear
//
//  Created by Melody on 7/4/17.
//  Copyright © 2017 Melody Yang. All rights reserved.
//

import Foundation

class Outfits {
    
    static var shared = Outfits()
    var category : Category = .unknown
    var categoryAtm = ""
//    var temp = 0
    
    
    //default clothing items changed based on weather
    var head = ClothingItems.Head.none
    var top = ClothingItems.Top.shortSleeveShirt
    var topAcc = ClothingItems.TopAcc.none
    var bottom = ClothingItems.bottom.pants
    var footwear = ClothingItems.Footwear.sneakers
    var accessory = ClothingItems.Accessories.none
    
    func forHead() {

        switch category {
        case .thunderstorm: fallthrough
        case .drizzle: fallthrough
        case .rain:
            head = ClothingItems.Head.cap
        case .snow:
            head = ClothingItems.Head.knitHat
        case .clouds: fallthrough
        case .mist: fallthrough
        case .naturalDisaster: fallthrough
        default:
            head = ClothingItems.Head.none
        }
        
    }
    
    func forTop() {
        switch category {
        case .thunderstorm: fallthrough
        case .drizzle: fallthrough
        case .rain: fallthrough
        case .snow:
            top = ClothingItems.Top.longSleeveShirt
        case .clouds: fallthrough
        case .mist:
            top = ClothingItems.Top.longSleeveShirt
        case .naturalDisaster: fallthrough
        default:
            top = ClothingItems.Top.shortSleeveShirt

        }
        
    }
    
    func forTopAcc() {
        switch category {
        case .thunderstorm: fallthrough
        case .drizzle: fallthrough
        case .rain:
            topAcc = ClothingItems.TopAcc.jacket
        case .snow:
            topAcc = ClothingItems.TopAcc.coat
        case .clouds: fallthrough
        case .mist:
            topAcc = ClothingItems.TopAcc.coat
        case .naturalDisaster: fallthrough
            topAcc = ClothingItems.TopAcc.trenchCoat
        default:
            topAcc = ClothingItems.TopAcc.none
        }
        
    }
    
    
    func forBottom()  {
        switch category {
        case .thunderstorm: fallthrough
        case .drizzle: fallthrough
        case .rain: fallthrough
        case .snow: fallthrough
        case .clouds: fallthrough
        case .mist: fallthrough
        case .naturalDisaster: fallthrough
        default:
            bottom = ClothingItems.bottom.pants
        }
        
    }
    
    func forFootwear() {
        switch category {
        case .thunderstorm: fallthrough
        case .drizzle: fallthrough
        case .rain:
            footwear = ClothingItems.Footwear.rainBoots
        case .snow:
            footwear = ClothingItems.Footwear.boots
        case .clouds: fallthrough
        case .mist: fallthrough
        case .naturalDisaster: fallthrough
        default:
            footwear = ClothingItems.Footwear.sneakers
        }
        
        
    }
    
    func forAccessory() {
        switch category {
        case .thunderstorm: fallthrough
        case .drizzle: fallthrough
        case .rain:
            accessory = ClothingItems.Accessories.umbrella
        case .snow: fallthrough
        case .clouds: fallthrough
        case .mist: fallthrough
        case .naturalDisaster: fallthrough
        default:
            accessory = ClothingItems.Accessories.none
        }
        
    }
    
    
    //Default temp: 60~70
    func getClothingCombo(_ ds: WeatherData)  {
        forHead()
        forTop()
        forTopAcc()
        forBottom()
        forFootwear()
        forAccessory()
        
    }
    
    func printSetting() {
        //getClothingCombo()
        
        print(head)
        print(top)
        print(topAcc)
        print(bottom)
        print(footwear)
        print(accessory)
        
    }

    
   

    
   
    
}

