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
    
    let temp = WeatherData.shared.temperature
    
    //default clothing items changed based on weather description
    var head = ClothingItems.Head.none
    var top = ClothingItems.Top.shortSleeveShirt
    var topAcc = ClothingItems.TopAcc.none
    var bottom = ClothingItems.bottom.pants
    var footwear = ClothingItems.Footwear.sneakers
    var footAcc = ClothingItems.Footwear.none
    var accessory = ClothingItems.Accessories.none
        
    private func forHead() {

        switch category {
        case .hot:
            head = ClothingItems.Head.hat
        case .thunderstorm: fallthrough
        case .drizzle: fallthrough
        case .rain:
            head = ClothingItems.Head.cap
        case .cold: fallthrough
        case .hail: fallthrough
        case .strongBreeze: fallthrough
        case .snow:
            head = ClothingItems.Head.knitHat
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
        
        tempTop()
        
    }
    
    private func forTopAcc() {
        switch category {
        case .thunderstorm: fallthrough
        case .rain:
            topAcc = ClothingItems.TopAcc.rainCoat
        case .cold: fallthrough
        case .drizzle: fallthrough
        case .clouds:
            topAcc = ClothingItems.TopAcc.jacket
        case .snow: fallthrough
        case .storm: fallthrough
        case .mist:
            topAcc = ClothingItems.TopAcc.coat
        case .sand: fallthrough
        case .hail: fallthrough
        case .strongBreeze: fallthrough
        case .naturalDisaster:
            topAcc = ClothingItems.TopAcc.trenchCoat
        case .hot: fallthrough
        case .calm: fallthrough
        default:
            topAcc = ClothingItems.TopAcc.none
        }
        
        tempTopAcc()
        
    }
    
    
    private func forBottom()  {
        switch category {
        case .thunderstorm: fallthrough
        case .drizzle: fallthrough
        case .rain: fallthrough
        case .snow: fallthrough
        case .clouds: fallthrough
        case .mist:
            bottom = ClothingItems.bottom.pants
        case .sand:
            bottom = ClothingItems.bottom.shorts
        case .naturalDisaster: fallthrough
        case .cold: fallthrough
        case .hot:
            bottom = ClothingItems.bottom.shorts
        case .hail: fallthrough
        case .calm: fallthrough
        case .strongBreeze: fallthrough
        case .storm: fallthrough
        default:
            bottom = ClothingItems.bottom.jeans
        }
        
        tempBottom()
        
    }
    
    private func forFootwear() {
        switch category {
        case .thunderstorm: fallthrough
        case .drizzle: fallthrough
        case .storm: fallthrough
        case .naturalDisaster: fallthrough
        case .rain:
            footwear = ClothingItems.Footwear.rainBoots
        case .snow:
            footwear = ClothingItems.Footwear.snowBoots
        case .hail: fallthrough
        case .strongBreeze: fallthrough
        case .mist: fallthrough
        case .cold:
            footwear = ClothingItems.Footwear.boots
        case .clouds: fallthrough
        case .sand: fallthrough
        case .calm: fallthrough
        default:
            footwear = ClothingItems.Footwear.sneakers
        }
        
    }
    
    private func forFootAcc() {
        switch category {
        case .thunderstorm: fallthrough
        case .drizzle: fallthrough
        case .storm: fallthrough
        case .rain: fallthrough
        case .snow: fallthrough
        case .hail: fallthrough
        case .strongBreeze: fallthrough
        case .cold: fallthrough
        case .clouds: fallthrough
        case .mist: fallthrough
        case .sand: fallthrough
        case .naturalDisaster: fallthrough
        case .calm: fallthrough
        default:
            footwear = ClothingItems.Footwear.socks
        }
        
        tempFootAcc()
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
    
    private func tempHead() {
        switch temp {
        case 0...60:
            if head != ClothingItems.Head.knitHat {
                head = ClothingItems.Head.knitHat
            }
        default:
            forHead()
        }
    }
    
    
   private func tempTop() {
        switch temp {
        case 0...60:
            if top == ClothingItems.Top.shortSleeveShirt {
                top = ClothingItems.Top.longSleeveShirt
            }
        case 70...200:
            if top == ClothingItems.Top.longSleeveShirt {
                top = ClothingItems.Top.shortSleeveShirt
            }
        default:
            forTop()
        }
        
    }
    
   private func tempTopAcc() {
        switch temp {
        case 0...60:
            if topAcc == ClothingItems.TopAcc.none {
                topAcc = ClothingItems.TopAcc.coat
            }
        case 70...200:
            if topAcc != ClothingItems.TopAcc.none {
                topAcc = ClothingItems.TopAcc.none
            }
        default:
            forTopAcc()
            
        }
    
    }
    
   private func tempBottom() {
        switch temp {
        case 0...60:
            if bottom != ClothingItems.bottom.pants {
                bottom = ClothingItems.bottom.pants
            }
        case 70...200:
            if bottom != ClothingItems.bottom.shorts {
                bottom = ClothingItems.bottom.shorts
            }
        default:
            forBottom()
        }
    }
    
   private func tempFootAcc() {
        switch temp {
        case 70...200:
            if footAcc != ClothingItems.Footwear.none {
                footAcc = ClothingItems.Footwear.none
            }
        default:
            forFootAcc()
        }
        
    }
   

    
   
    
}

