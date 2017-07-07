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
    
    private func forHead() {

        switch category {
        case .thunderstorm: fallthrough
        case .drizzle: fallthrough
        case .rain:
            head = ClothingItems.Head.cap
        case .snow:
            head = ClothingItems.Head.knitHat
        case .clouds: fallthrough
        case .mist: fallthrough
        case .smoke: fallthrough
        case .haze: fallthrough
        case .sandAndDustWhirls: fallthrough
        case .fog: fallthrough
        case .sand: fallthrough
        case .dust: fallthrough
        case .volcanicAsh: fallthrough
        case .squalls: fallthrough
        case .tornado: fallthrough
        case .unknown:
            head = ClothingItems.Head.none
        }
        
    }
    
    private func forTop() {
        switch category {
        case .thunderstorm: fallthrough
        case .drizzle: fallthrough
        case .rain: fallthrough
        case .snow:
            top = ClothingItems.Top.longSleeveShirt
        case .clouds: fallthrough
        case .mist:
            top = ClothingItems.Top.longSleeveShirt
        case .smoke: fallthrough
        case .haze: fallthrough
        case .sandAndDustWhirls: fallthrough
        case .fog: fallthrough
        case .sand: fallthrough
        case .dust: fallthrough
        case .volcanicAsh: fallthrough
        case .squalls: fallthrough
        case .tornado: fallthrough
        case .unknown:
            top = ClothingItems.Top.shortSleeveShirt

        }
        
    }
    
    private func forTopAcc() {
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
        case .smoke: fallthrough
        case .haze: fallthrough
        case .sandAndDustWhirls: fallthrough
        case .fog: fallthrough
        case .sand: fallthrough
        case .dust: fallthrough
        case .volcanicAsh: fallthrough
        case .squalls: fallthrough
        case .tornado:
            topAcc = ClothingItems.TopAcc.trenchCoat
        case .unknown:
            topAcc = ClothingItems.TopAcc.none
        }
        
    }
    
    
    private func forBottom()  {
        switch category {
        case .thunderstorm: fallthrough
        case .drizzle: fallthrough
        case .rain: fallthrough
        case .snow: fallthrough
        case .clouds: fallthrough
        case .mist: fallthrough
        case .smoke: fallthrough
        case .haze: fallthrough
        case .sandAndDustWhirls: fallthrough
        case .fog: fallthrough
        case .sand: fallthrough
        case .dust: fallthrough
        case .volcanicAsh: fallthrough
        case .squalls: fallthrough
        case .tornado: fallthrough
        case .unknown:
            bottom = ClothingItems.bottom.pants
        }
        
    }
    
    private func forFootwear() {
        switch category {
        case .thunderstorm: fallthrough
        case .drizzle: fallthrough
        case .rain:
            footwear = ClothingItems.Footwear.rainBoots
        case .snow:
            footwear = ClothingItems.Footwear.boots
        case .clouds: fallthrough
        case .mist: fallthrough
        case .smoke: fallthrough
        case .haze: fallthrough
        case .sandAndDustWhirls: fallthrough
        case .fog: fallthrough
        case .sand: fallthrough
        case .dust: fallthrough
        case .volcanicAsh: fallthrough
        case .squalls: fallthrough
        case .tornado: fallthrough
        case .unknown:
            footwear = ClothingItems.Footwear.sneakers
        }
        
        
    }
    
    private func forAccessory() {
        switch category {
        case .thunderstorm: fallthrough
        case .drizzle: fallthrough
        case .rain:
            accessory = ClothingItems.Accessories.umbrella
        case .snow: fallthrough
        case .clouds: fallthrough
        case .mist: fallthrough
        case .smoke: fallthrough
        case .haze: fallthrough
        case .sandAndDustWhirls: fallthrough
        case .fog: fallthrough
        case .sand: fallthrough
        case .dust: fallthrough
        case .volcanicAsh: fallthrough
        case .squalls: fallthrough
        case .tornado: fallthrough
        case .unknown:
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
        print(head)
        print(top)
        print(topAcc)
        print(bottom)
        print(footwear)
        print(accessory)
        
    }

    
   

    
   
    
}

