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
        
    }
    
    enum Top: String {
        case none
        case mLongSleeveShirt
        case mShortSleeveShirt
    }
    
    enum TopAcc : String {
        case none
        case mJacket
        case mSweater
        case mTrenchCoat
        case rainCoat
        
        case mVest
        case mBlazer
        case mCoat
    }
    
    //feature
//    enum FullBody: String {
//        
//    }
    
    
    enum bottom : String {
        case none
        //thick pants (for winter/cold)
        case mPants
        case mShorts
        case jeans
    
    }
    
    enum Footwear: String {
        case none
        case mSneakers
        case mBoots
        case mSandals
        case mRainBoots
        case mSnowBoots
        
        case socks
    
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
        
    }
    
    enum Top: String {
        case none
        case fLongSleeveShirt
        case fShortSleeveShirt
    }
    
    enum TopAcc : String {
        case none
        case fJacket
        case fSweater
        case fTrenchCoat
        case fRainCoat
        
        case fVest
        case fBlazer
        case fCoat
    }
    
    //feature
    enum FullBody: String {
        case dress
    }
    
    
    enum bottom : String {
        case none
        //thick pants (for winter/cold)
        case fPants
        case fShorts
        case jeans
        case fLeggings
        
        case skirt
    }
    
    enum Footwear: String {
        case none
        case fSneakers
        case fBoots
        case fSandals
        case fRainBoots
        case fSnowBoots
        
        case socks
        
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


