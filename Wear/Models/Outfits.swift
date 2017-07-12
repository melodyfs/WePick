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
        case .Hot: fallthrough
        case .thunderstorm: fallthrough
        case .drizzle: fallthrough
        case .rain:
            head = ClothingItems.Head.cap
        case .Cold: fallthrough
        case .Hail: fallthrough
        case .StrongBreeze: fallthrough
        case .snow:
            head = ClothingItems.Head.knitHat
        case .clouds: fallthrough
        case .mist: fallthrough
        case .sand: fallthrough
        case .naturalDisaster: fallthrough
        case .Calm: fallthrough
        case .Storm: fallthrough
        default:
            head = ClothingItems.Head.none
        }
        
    }
    
    private func forTop() {
        switch category {
        case .thunderstorm: fallthrough
        case .drizzle: fallthrough
        case .rain: fallthrough
        case .snow: fallthrough
        case .clouds: fallthrough
        case .Cold: fallthrough
        case .Hail: fallthrough
        case .StrongBreeze: fallthrough
        case . Storm: fallthrough
        case .mist:
            top = ClothingItems.Top.longSleeveShirt
        case .sand: fallthrough
        case .naturalDisaster: fallthrough
        case .Hot: fallthrough
        case .Calm: fallthrough
        default:
            top = ClothingItems.Top.shortSleeveShirt

        }
        
    }
    
    private func forTopAcc() {
        switch category {
        case .thunderstorm: fallthrough
        case .drizzle: fallthrough
        case .rain:
            topAcc = ClothingItems.TopAcc.jacket
        case .Cold: fallthrough
        case .snow: fallthrough
        case .Storm: fallthrough
        case .clouds: fallthrough
        case .mist:
            topAcc = ClothingItems.TopAcc.coat
        case .sand: fallthrough
        case .Hail: fallthrough
        case .StrongBreeze: fallthrough
        case .naturalDisaster:
            topAcc = ClothingItems.TopAcc.trenchCoat
        case .Hot: fallthrough
        case .Calm: fallthrough
        default:
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
        case .sand: fallthrough
        case .naturalDisaster: fallthrough
        case .Cold: fallthrough
        case .Hot: fallthrough
        case .Hail: fallthrough
        case .Calm: fallthrough
        case .StrongBreeze: fallthrough
        case .Storm: fallthrough
        default:
            bottom = ClothingItems.bottom.jeans
        }
        
    }
    
    private func forFootwear() {
        switch category {
        case .thunderstorm: fallthrough
        case .drizzle: fallthrough
        case .Storm: fallthrough
        case .rain:
            footwear = ClothingItems.Footwear.rainBoots
        case .snow: fallthrough
        case .Hail: fallthrough
        case .StrongBreeze: fallthrough
        case .Cold:
            footwear = ClothingItems.Footwear.boots
        case .clouds: fallthrough
        case .mist: fallthrough
        case .sand: fallthrough
        case .naturalDisaster: fallthrough
        case .Calm: fallthrough
        default:
            footwear = ClothingItems.Footwear.sneakers
        }
        
        
    }
    
    private func forAccessory() {
        switch category {
        case .thunderstorm: fallthrough
        case .drizzle: fallthrough
        case .Storm: fallthrough
        case .rain:
            accessory = ClothingItems.Accessories.umbrella
        case .snow: fallthrough
        case .clouds: fallthrough
        case .mist: fallthrough
        case .sand: fallthrough
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
        print(head)
        print(top)
        print(topAcc)
        print(bottom)
        print(footwear)
        print(accessory)
        
    }

    
   

    
   
    
}

