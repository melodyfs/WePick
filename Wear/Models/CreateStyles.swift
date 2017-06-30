//
//  Clothes.swift
//  Wear
//
//  Created by Melody on 6/29/17.
//  Copyright © 2017 Melody Yang. All rights reserved.
//

import Foundation

class CreateStyles {
    
    //MARK: - Enums
    
    enum StyleFromDecription {
        case mist
        case rain
        case clearSky
        
    }
    
    enum StyleFromTemp {
        case below60
        case from64To70
        case above70
    }
    
    enum Head: String {
        case hat = "hat"
        case cap = "cap"
        
    }
    
    enum UpperBody: String {
        case longSleeveShirt = "long Sleeve Shirt"
        case tShirt = "t Shirt"
        case jacket = "jacket"
        case rainCoat = "rain coat "
        
    }
    
    enum LowerBody: String {
        case pants = "pants"
        case shorts = "shorts"
        
    }
    
    enum Shoes: String {
        case sneakers = "snaakers"
        case boots = "boots"
        case sandals = "sandals"
        case rainBoots = "rain boots"
    
    }
    
    enum Accessories: String {
        case umbrella = "umbrella"
        
    }
    
    //MARK: - Actions
    
    //a function that tells which code path to go when a style is called
    func createStyle(type: StyleFromDecription) {
        switch type {
        case .mist:
            print("\(Head.hat), \(UpperBody.longSleeveShirt), \(LowerBody.pants), \(Shoes.sneakers), \(UpperBody.jacket)")
        case .rain:
            print("\(Head.cap), \(UpperBody.tShirt), \(LowerBody.pants), \(Shoes.boots), \(Accessories.umbrella)")
        case .clearSky:
            print("\(Head.hat), \(UpperBody.tShirt), \(LowerBody.shorts), \(Shoes.sandals)")
        default:
            print("Style yet to be created")
        }
        
    

    }
    
    func createStyle(type: StyleFromTemp) {
        switch type {
        case .below60:
            print("\(Head.hat), \(UpperBody.longSleeveShirt), \(LowerBody.pants), \(Shoes.sneakers), \(UpperBody.jacket)")
        case .from64To70:
            print("\(Head.cap), \(UpperBody.tShirt), \(LowerBody.pants), \(Shoes.boots), \(Accessories.umbrella)")
        case .above70:
            print("\(Head.hat), \(UpperBody.tShirt), \(LowerBody.shorts), \(Shoes.sandals)")
        default:
            print("Style yet to be created")
        }
        
        
        
    }
    
    //call the createStyle func in enum based on weather description
    class func getStyle(description: String) {
        let description = WeatherData.shared.description
        let style = CreateStyles()
        
        if description.range(of: "mist") != nil {
            style.createStyle(type: .mist)
        }
        
        if description.range(of: "rain") != nil {
            style.createStyle(type: .rain)
        }
        
        if description.range(of: "clear sky") != nil {
            style.createStyle(type: .clearSky)
            
        }
        
        
    }
    
    //call the create style func based on temperature
    class func getStyleFromTemp(temp: Int) {
        let temp = WeatherData.shared.temperature
        let style = CreateStyles()
        
        if temp < 60 {
            style.createStyle(type:.below60)
        }
        
        if temp > 60 && temp < 70 {
            style.createStyle(type: .from64To70)
        }
        
        if temp > 70 {
            style.createStyle(type: .above70)
            
        }
        
        
    }
    


    
}
