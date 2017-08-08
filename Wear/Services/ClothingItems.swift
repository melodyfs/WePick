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
        case jacket
        case jacket1
        case jacket2
//        case mSweater
       // case mTrenchCoat
//        case rainCoat
//        
//        case mVest
//        case mBlazer
        case mCoat
        case mCoat1
        
        static func randomJacket() -> String {
            let itemsToGetRandomly = [jacket, jacket1, jacket2]
            let index = Int(arc4random_uniform(UInt32(itemsToGetRandomly.count)))
            let i = itemsToGetRandomly[index].rawValue
            return i
        }
        
        static func randomCoat() -> String {
            let itemsToGetRandomly = [mCoat, mCoat1]
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
        case mShorts1
        case jeans
        case jeans1
        
        static func randomPants() -> String {
            let itemsToGetRandomly = [mPants]
            let index = Int(arc4random_uniform(UInt32(itemsToGetRandomly.count)))
            let i = itemsToGetRandomly[index].rawValue
            return i
        }
        
        static func randomJeans() -> String {
            let itemsToGetRandomly = [jeans, jeans1]
            let index = Int(arc4random_uniform(UInt32(itemsToGetRandomly.count)))
            let i = itemsToGetRandomly[index].rawValue
            return i
        }
        
        static func randomShorts() -> String {
            let itemsToGetRandomly = [mShorts, mShorts1]
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
        case jacket
//        case fSweater
        case jacket1
        case jacket2
        //case fTrenchCoat
       // case fRainCoat
        
//        case fVest
//        case fBlazer
        case fCoat
        case fCoat1
        
        static func randomJacket() -> String {
            let itemsToGetRandomly = [jacket, jacket1, jacket2]
            let index = Int(arc4random_uniform(UInt32(itemsToGetRandomly.count)))
            let i = itemsToGetRandomly[index].rawValue
            return i
        }
        
        static func randomCoat() -> String {
            let itemsToGetRandomly = [fCoat, fCoat1]
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
        case fShorts1
        case jeans
        case jeans1
//        case fLeggings
        
        //case skirt
        
        static func randomPants() -> String {
            let itemsToGetRandomly = [fPants]
            let index = Int(arc4random_uniform(UInt32(itemsToGetRandomly.count)))
            let i = itemsToGetRandomly[index].rawValue
            return i
        }
        
        static func randomJeans() -> String {
            let itemsToGetRandomly = [jeans, jeans1]
            let index = Int(arc4random_uniform(UInt32(itemsToGetRandomly.count)))
            let i = itemsToGetRandomly[index].rawValue
            return i
        }
        
        static func randomShorts() -> String {
            let itemsToGetRandomly = [fShorts, fShorts1]
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


