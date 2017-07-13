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
        case .hot: fallthrough
        case .thunderstorm: fallthrough
        case .drizzle: fallthrough
        case .rain:
            head = ClothingItems.Head.cap
        case .cold: fallthrough
        case .hail: fallthrough
        case .strongBreeze: fallthrough
        case .snow: fallthrough
//            head = ClothingItems.Head.knitHat
        case .clouds: fallthrough
        case .mist: fallthrough
        case .sand: fallthrough
        case .naturalDisaster: fallthrough
        case .calm: fallthrough
        case .storm: fallthrough
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
        case .cold: fallthrough
        case .hail: fallthrough
        case .strongBreeze: fallthrough
        case .storm: fallthrough
        case .mist:
            top = ClothingItems.Top.longSleeveShirt
        case .sand: fallthrough
        case .naturalDisaster: fallthrough
        case .hot: fallthrough
        case .calm: fallthrough
        default:
            top = ClothingItems.Top.shortSleeveShirt

        }
        
    }
    
    private func forTopAcc() {
        switch category {
        case .thunderstorm: fallthrough
        case .drizzle: fallthrough
        case .cold: fallthrough
        case .clouds: fallthrough
        case .rain:
            topAcc = ClothingItems.TopAcc.jacket
        case .snow: fallthrough
        case .storm: fallthrough
        case .mist: fallthrough
//            topAcc = ClothingItems.TopAcc.coat
        case .sand: fallthrough
        case .hail: fallthrough
        case .strongBreeze: fallthrough
        case .naturalDisaster: fallthrough
//            topAcc = ClothingItems.TopAcc.trenchCoat
        case .hot: fallthrough
        case .calm: fallthrough
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
        case .cold: fallthrough
        case .hot: fallthrough
        case .hail: fallthrough
        case .calm: fallthrough
        case .strongBreeze: fallthrough
        case .storm: fallthrough
        default:
            bottom = ClothingItems.bottom.jeans
        }
        
    }
    
    private func forFootwear() {
        switch category {
        case .thunderstorm: fallthrough
        case .drizzle: fallthrough
        case .storm: fallthrough
        case .rain: fallthrough
//            footwear = ClothingItems.Footwear.rainBoots
        case .snow: fallthrough
        case .hail: fallthrough
        case .strongBreeze: fallthrough
        case .cold: fallthrough
//            footwear = ClothingItems.Footwear.boots
        case .clouds: fallthrough
        case .mist: fallthrough
        case .sand: fallthrough
        case .naturalDisaster: fallthrough
        case .calm: fallthrough
        default:
            footwear = ClothingItems.Footwear.sneakers
        }
        
        
    }
    
    private func forAccessory() {
        switch category {
        case .thunderstorm: fallthrough
        case .drizzle: fallthrough
        case .storm: fallthrough
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

