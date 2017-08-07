//
//  Clothes.swift
//  Wear
//
//  Created by Melody on 6/29/17.
//  Copyright © 2017 Melody Yang. All rights reserved.
//

import Foundation

//MARK: - Male


enum MClothingItems {
    
    enum Head: String {
        case none
        case hat
        case cap
        case knitHat
        //case sunglasses
        
        static func randomHat() -> String {
            let itemsToGetRandomly = [hat, cap, knitHat]
            let index = Int(arc4random_uniform(UInt32(itemsToGetRandomly.count)))
            let i = itemsToGetRandomly[index].rawValue
            return i
        }
    }
    
    
    
    enum Top: String {
        case none
        case mLongSleeveShirt
        case mLongSleeveShirt1
//        case mLongSleeveShirt2
//        case mLongSleeveShirt3
        case mShortSleeveShirt
        case mShortSleeveShirt1
        
        static func randomLong() -> String {
            let itemsToGetRandomly = [mLongSleeveShirt, mLongSleeveShirt1]
            let index = Int(arc4random_uniform(UInt32(itemsToGetRandomly.count)))
            let i = itemsToGetRandomly[index].rawValue
            return i
        }

        static func randomShort() -> String {
            let itemsToGetRandomly = [mShortSleeveShirt, mShortSleeveShirt1]
            let index = Int(arc4random_uniform(UInt32(itemsToGetRandomly.count)))
            let i = itemsToGetRandomly[index].rawValue
            return i
        }
        
        
    }
    
    enum TopAcc : String {
        case none
        case mJacket
//        case mSweater
        case mTrenchCoat
//        case rainCoat
//        
//        case mVest
//        case mBlazer
        case mCoat
        
        static func random() -> String {
            let itemsToGetRandomly = [mJacket, mCoat]
            let index = Int(arc4random_uniform(UInt32(itemsToGetRandomly.count)))
            let i = itemsToGetRandomly[index].rawValue
            return i
        }
    }
    
    //feature
//    enum FullBody: String {
//        
//    }
    
    
    enum Bottom : String {
        case none
        //thick pants (for winter/cold)
        case mPants
        case mShorts
        case jeans
        
        static func randomPants() -> String {
            let itemsToGetRandomly = [mPants, jeans]
            let index = Int(arc4random_uniform(UInt32(itemsToGetRandomly.count)))
            let i = itemsToGetRandomly[index].rawValue
            return i
        }
    }
    
    enum Footwear: String {
        case none
        case sneakers
        case sneakers1
        //case mBoots
        //case mSandals
        case rainBoots
        //case mSnowBoots
        
        //case socks
        
        static func randomShoe() -> String {
            let itemsToGetRandomly = [sneakers, sneakers1]
            let index = Int(arc4random_uniform(UInt32(itemsToGetRandomly.count)))
            let i = itemsToGetRandomly[index].rawValue
            return i
        }
    }
    
    enum Accessories: String {
        case none
        case umbrella
        case gloves
        case helmet
        
        case mBelt
   
    }
    

}

//MARK: - Female

enum FClothingItems {
    
    enum Head: String {
        case none
        case hat
        case cap
        case knitHat
        case sunglasses
        
        static func randomHat() -> String {
            let itemsToGetRandomly = [hat, cap, knitHat]
            let index = Int(arc4random_uniform(UInt32(itemsToGetRandomly.count)))
            let i = itemsToGetRandomly[index].rawValue
            return i
        }
    }
    
    enum Top: String {
        case none
        case fLongSleeveShirt
        case fLongSleeveShirt1
        case fShortSleeveShirt
        case fShortSleeveShirt1
        
        static func randomLong() -> String {
            let itemsToGetRandomly = [fLongSleeveShirt, fLongSleeveShirt1]
            let index = Int(arc4random_uniform(UInt32(itemsToGetRandomly.count)))
            let i = itemsToGetRandomly[index].rawValue
            return i
        }
        
        static func randomShort() -> String {
            let itemsToGetRandomly = [fShortSleeveShirt, fShortSleeveShirt1]
            let index = Int(arc4random_uniform(UInt32(itemsToGetRandomly.count)))
            let i = itemsToGetRandomly[index].rawValue
            return i
        }

    }
    
    enum TopAcc : String {
        case none
        case fJacket
//        case fSweater
        case fTrenchCoat
        case fRainCoat
        
//        case fVest
//        case fBlazer
        case fCoat
        
        static func random() -> String {
            let itemsToGetRandomly = [fJacket, fCoat]
            let index = Int(arc4random_uniform(UInt32(itemsToGetRandomly.count)))
            let i = itemsToGetRandomly[index].rawValue
            return i
        }
    }
    
    //feature
    enum FullBody: String {
        case dress
    }
    
    
    enum Bottom : String {
        case none
        //thick pants (for winter/cold)
        case fPants
        case fShorts
        case jeans
//        case fLeggings
        
        //case skirt
        
        static func randomPants() -> String {
            let itemsToGetRandomly = [fPants, jeans]
            let index = Int(arc4random_uniform(UInt32(itemsToGetRandomly.count)))
            let i = itemsToGetRandomly[index].rawValue
            return i
        }
    }
    
    enum Footwear: String {
        case none
        case sneakers
        case sneakers1
        case fBoots
        //case fSandals
        case rainBoots
//        case fSnowBoots
//        
//        case socks
        
        static func randomShoe() -> String {
            let itemsToGetRandomly = [sneakers, sneakers1]
            let index = Int(arc4random_uniform(UInt32(itemsToGetRandomly.count)))
            let i = itemsToGetRandomly[index].rawValue
            return i
        }
        
    }
    
    enum Accessories: String {
        case none
        case umbrella
        case rainCoat
        case scarf
        case gloves
        case helmet
        
        case fBelt
        
    }
    
    
}


