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
    var category : Category = WeatherDataService.shared.category
    var categoryAtm = ""
    
    var temp = WeatherData.shared.temperature
    
    //default male clothing items changed based on weather description
    var mHead = MClothingItems.Head.none
    var mTop = MClothingItems.Top.mShortSleeveShirt
    var mTopAcc = MClothingItems.TopAcc.none
    var mBottom = MClothingItems.Bottom.jeans
    var mFootwear = MClothingItems.Footwear.sneakers
    var mFootAcc = MClothingItems.Footwear.none
    var mAccessory = MClothingItems.Accessories.none
    
    
    //default female clothing items changed based on weather description
    var fHead = FClothingItems.Head.none
    var fTop = FClothingItems.Top.fShortSleeveShirt
    var fTopAcc = FClothingItems.TopAcc.none
    var fBottom = FClothingItems.Bottom.fPants
    var fFootwear = FClothingItems.Footwear.sneakers1
    var fFootAcc = FClothingItems.Footwear.none
    var fAccessory = FClothingItems.Accessories.none
    
    func decideTemp() {
        let uTemp = UserTemp.shared.userTemp
        
        switch uTemp {
        case "cold":
            if temp > 70 {
                temp = 55
            }
        case "middle" :
            if temp < 60 {
                temp = 80
            } else if temp > 70 {
                temp = 70
            }
        case "hot":
            if temp < 80 {
                temp = 80
            }
            
            //temp < 70 ? (temp = 80) : (temp = 55)
        default: break
        
        }
        
        WeatherDataService.shared.compareEnumValues(WeatherData.shared)
        print("weather \(category)")
    }
    
    
    //MARK: - Male
    
    private func mForHead() {

        switch category {
        case .hot:
            mHead = MClothingItems.Head.hat
        case .thunderstorm: fallthrough
        case .drizzle: fallthrough
        case .rain:
            mHead = MClothingItems.Head.cap
        case .cold: fallthrough
        case .hail: fallthrough
        case .strongBreeze: fallthrough
        case .snow:
            mHead = MClothingItems.Head.knitHat
        case .clouds: fallthrough
        case .mist: fallthrough
        case .sand: fallthrough
        case .naturalDisaster: fallthrough
        case .calm: fallthrough
        case .storm: fallthrough
        default:
            mHead = MClothingItems.Head.none
        }
        
        mTempHead()
        
    }
    
    private func mForTop() {
        switch category {
        case .thunderstorm: fallthrough
        case .drizzle: fallthrough
        case .rain: fallthrough
        case .clouds: fallthrough
            mTop = MClothingItems.Top.mLongSleeveShirt
        case .cold: fallthrough
        case .hail: fallthrough
        case .strongBreeze: fallthrough
        case .storm: fallthrough
        case .snow: fallthrough
        case .mist:
            mTop = MClothingItems.Top.mLongSleeveShirt1
        case .sand: fallthrough
        case .naturalDisaster: fallthrough
        case .hot: fallthrough
        case .calm: fallthrough
        default:
            mTop = MClothingItems.Top.mShortSleeveShirt1

        }
        
        mTempTop()
        
    }
    
    private func mForTopAcc() {
        switch category {
        case .thunderstorm: fallthrough
        case .rain: fallthrough
//            mTopAcc = MClothingItems.TopAcc.rainCoat
        case .cold: fallthrough
        case .drizzle: fallthrough
        case .clouds:
            mTopAcc = MClothingItems.TopAcc.mJacket
        case .snow: fallthrough
        case .storm: fallthrough
        case .mist:
            mTopAcc = MClothingItems.TopAcc.mCoat
        case .sand: fallthrough
        case .hail: fallthrough
        case .strongBreeze: fallthrough
        case .naturalDisaster:
            mTopAcc = MClothingItems.TopAcc.mTrenchCoat
        case .hot: fallthrough
        case .calm: fallthrough
        default:
            mTopAcc = MClothingItems.TopAcc.none
        }
        
        mTempTopAcc()
        
    }
    
    
    private func mForBottom()  {
        switch category {
        case .thunderstorm: fallthrough
        case .drizzle: fallthrough
        case .rain: fallthrough
        case .snow: fallthrough
        case .clouds: fallthrough
        case .mist:
            mBottom = MClothingItems.Bottom.mPants
        case .sand:
            mBottom = MClothingItems.Bottom.mShorts
        case .naturalDisaster: fallthrough
        case .cold: fallthrough
        case .hot:
            mBottom = MClothingItems.Bottom.mShorts
        case .hail: fallthrough
        case .calm: fallthrough
        case .strongBreeze: fallthrough
        case .storm: fallthrough
        default:
            mBottom = MClothingItems.Bottom.jeans
        }
        
        mTempBottom()
        
    }
    
    private func mForFootwear() {
        switch category {
        case .thunderstorm: fallthrough
        case .drizzle: fallthrough
        case .storm: fallthrough
        case .naturalDisaster: fallthrough
        case .rain: fallthrough
           // mFootwear = MClothingItems.Footwear.mRainBoots
        case .snow: fallthrough
           // mFootwear = MClothingItems.Footwear.mSnowBoots
        case .hail: fallthrough
        case .strongBreeze: fallthrough
        case .mist: fallthrough
        case .cold:
            mFootwear = MClothingItems.Footwear.rainBoots
        case .clouds: fallthrough
        case .sand: fallthrough
        case .calm: fallthrough
        default:
            mFootwear = MClothingItems.Footwear.sneakers
        }
        
    }
    
    private func mForFootAcc() {
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
        default: break
           // mFootwear = MClothingItems.Footwear.socks
        }
        
        mTempFootAcc()
    }
    
    private func mForAccessory() {
        switch category {
        case .thunderstorm: fallthrough
        case .drizzle: fallthrough
        case .storm: fallthrough
        case .rain:
            mAccessory = MClothingItems.Accessories.umbrella
        case .snow: fallthrough
        case .clouds: fallthrough
        case .mist: fallthrough
        case .sand: fallthrough
        case .naturalDisaster: fallthrough
        default:
            mAccessory = MClothingItems.Accessories.none
        }
        
    }
    
    
    //Default temp: 60~70
    func getClothingCombo(_ ds: WeatherData)  {
        mForHead()
        mForTop()
        mForTopAcc()
        mForBottom()
        mForFootwear()
        mForAccessory()
        
    }
    
    func printSetting() {
        print(mHead)
        print(mTop)
        print(mTopAcc)
        print(mBottom)
        print(mFootwear)
        print(mAccessory)
        
    }
    
    //MARK: - Male Temperature
    
    private func mTempHead() {
        switch temp {
        case 0...60:
            if mHead == MClothingItems.Head.knitHat {
                mHead = MClothingItems.Head.none
            }
        case 61...200: break
        default: break
        }
    }
    
    
   private func mTempTop() {
        switch temp {
        case 0...60:
            if mTop == MClothingItems.Top.mShortSleeveShirt {
                mTop = MClothingItems.Top.mLongSleeveShirt
            }
        case 61...79: break
        case 80...200:
            if mTop != MClothingItems.Top.mShortSleeveShirt || mTop != MClothingItems.Top.mShortSleeveShirt1 {
                mTop = MClothingItems.Top.mShortSleeveShirt
            }

        default:
            mForTop()
        }
        
    }
    
   private func mTempTopAcc() {
        switch temp {
        case 0...79:
            if mTopAcc == MClothingItems.TopAcc.none {
                mTopAcc = MClothingItems.TopAcc.mJacket
            }

           
        //case 61...79: break
        case 80...200:
              if mTopAcc != MClothingItems.TopAcc.none {
                mTopAcc = MClothingItems.TopAcc.none
            }
        default:
            mForTopAcc()
            
        }
    
    }
    
   private func mTempBottom() {
        switch temp {
        case 0...60:
            if mBottom != MClothingItems.Bottom.mPants {
                mBottom = MClothingItems.Bottom.mPants
            }
        case 61...79: break
        case 80..<200:
           
            if mBottom != MClothingItems.Bottom.mShorts {
                mBottom = MClothingItems.Bottom.mShorts
            }
        default:
            mForBottom()
        }
    }
    
   private func mTempFootAcc() {
        switch temp {
        case 0...60: break
        case 61...70: break
        case 71..<200:
            if mFootAcc != MClothingItems.Footwear.none {
                mFootAcc = MClothingItems.Footwear.none
            }
        default:
            mForFootAcc()
        }
        
    }
    
    //MARK: - Female
    
    private func fForHead() {
        
        switch category {
        case .hot:
            fHead = FClothingItems.Head.hat
        case .thunderstorm: fallthrough
        case .drizzle: fallthrough
        case .rain:
            fHead = FClothingItems.Head.cap
        case .cold: fallthrough
        case .hail: fallthrough
        case .strongBreeze: fallthrough
        case .snow:
            fHead = FClothingItems.Head.knitHat
        case .clouds: fallthrough
        case .mist: fallthrough
        case .sand: fallthrough
        case .naturalDisaster: fallthrough
        case .calm: fallthrough
        case .storm: fallthrough
        default:
            fHead = FClothingItems.Head.none
        }
        
        fTempHead()
        
    }
    
    private func fForTop() {
        switch category {
        case .thunderstorm: fallthrough
        case .drizzle: fallthrough
        case .rain:
            fTop = FClothingItems.Top.fLongSleeveShirt
        case .clouds: fallthrough
        case .cold: fallthrough
        case .hail: fallthrough
        case .strongBreeze: fallthrough
        case .storm: fallthrough
        case .snow: fallthrough
        case .mist:
            fTop = FClothingItems.Top.fLongSleeveShirt1
        case .sand: fallthrough
        case .naturalDisaster: fallthrough
        case .hot: fallthrough
        case .calm: fallthrough
        default:
            fTop = FClothingItems.Top.fShortSleeveShirt
            
        }
        
        fTempTop()
        
    }
    
    private func fForTopAcc() {
        switch category {
        case .thunderstorm: fallthrough
        case .rain: fallthrough
//            fTopAcc = FClothingItems.TopAcc.fRainCoat
        case .cold: fallthrough
        case .drizzle: fallthrough
        case .clouds:
            fTopAcc = FClothingItems.TopAcc.fCoat
        case .snow: fallthrough
        case .storm: fallthrough
        case .mist:
            fTopAcc = FClothingItems.TopAcc.fJacket
        case .sand: fallthrough
        case .hail: fallthrough
        case .strongBreeze: fallthrough
        case .naturalDisaster:
            fTopAcc = FClothingItems.TopAcc.fTrenchCoat
        case .hot: fallthrough
        case .calm: fallthrough
        default:
            fTopAcc = FClothingItems.TopAcc.none
        }
        
        fTempTopAcc()
        
    }
    
    
    private func fForBottom()  {
        switch category {
        case .thunderstorm: fallthrough
        case .drizzle: fallthrough
        case .rain: fallthrough
        case .snow: fallthrough
        case .clouds: fallthrough
        case .mist:
            fBottom = FClothingItems.Bottom.fPants
        case .sand:
            fBottom = FClothingItems.Bottom.fShorts
        case .naturalDisaster: fallthrough
        case .cold: fallthrough
        case .hot:
            fBottom = FClothingItems.Bottom.fShorts
        case .hail: fallthrough
        case .calm: fallthrough
        case .strongBreeze: fallthrough
        case .storm: fallthrough
        default:
            fBottom = FClothingItems.Bottom.jeans
        }
        
        fTempBottom()
        
    }
    
    private func fForFootwear() {
        switch category {
        case .thunderstorm: fallthrough
        case .drizzle: fallthrough
        case .storm: fallthrough
        case .naturalDisaster: fallthrough
        case .rain: fallthrough
        case .snow:
           fFootwear = FClothingItems.Footwear.rainBoots
                   // fFootwear = FClothingItems.Footwear.fSnowBoots
        case .hail: fallthrough
        case .strongBreeze: fallthrough
        case .mist: fallthrough
        case .cold:
            fFootwear = FClothingItems.Footwear.fBoots
        case .clouds: fallthrough
        case .sand: fallthrough
        case .calm: fallthrough
        default:
            fFootwear = FClothingItems.Footwear.sneakers1
        }
        
    }
    
    private func fForFootAcc() {
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
        default: break
            //fFootwear = FClothingItems.Footwear.socks
        }
        
        fTempFootAcc()
    }
    
    private func fForAccessory() {
        switch category {
        case .thunderstorm: fallthrough
        case .drizzle: fallthrough
        case .storm: fallthrough
        case .rain:
            fAccessory = FClothingItems.Accessories.umbrella
        case .snow: fallthrough
        case .clouds: fallthrough
        case .mist: fallthrough
        case .sand: fallthrough
        case .naturalDisaster: fallthrough
        default:
            fAccessory = FClothingItems.Accessories.none
        }
        
    }
    
    
    //Default temp: 60~70
    func fGetClothingCombo(_ ds: WeatherData)  {
        fForHead()
        fForTop()
        fForTopAcc()
        fForBottom()
        fForFootwear()
        fForAccessory()
        
    }
    
    func fPrintSetting() {
        print(fHead)
        print(fTop)
        print(fTopAcc)
        print(fBottom)
        print(fFootwear)
        print(fAccessory)
        
    }
    
    //MARK: - Female Temperature
    
    private func fTempHead() {
        switch temp {
        case 0...60:
            if fHead == FClothingItems.Head.knitHat {
                fHead = FClothingItems.Head.none
            }
        case 61...200: break
        default:
            fForHead()
        }
    }
    
    
    private func fTempTop() {
        switch temp {
        case 0...60:
           if fTop != FClothingItems.Top.fLongSleeveShirt {
                fTop = FClothingItems.Top.fLongSleeveShirt
            }
        case 61...79: break
        case 80...200:
            if fTop == FClothingItems.Top.fLongSleeveShirt {
                fTop = FClothingItems.Top.fShortSleeveShirt
            }
        default:
            fForTop()
        }
        
    }
    
    private func fTempTopAcc() {
        switch temp {
        case 0...60:
            if fTopAcc == FClothingItems.TopAcc.none {
                fTopAcc = FClothingItems.TopAcc.fCoat
            }
        case 61...79: break
        case 80...200:
            if fTopAcc != FClothingItems.TopAcc.none {
                fTopAcc = FClothingItems.TopAcc.none
            }
        default:
            fForTopAcc()
            
        }
        
    }
    
    private func fTempBottom() {
        switch temp {
        case 0...60:
            if fBottom != FClothingItems.Bottom.fPants {
                fBottom = FClothingItems.Bottom.fPants
            }
        case 61...79: break
        case 80..<200:
             if fBottom != FClothingItems.Bottom.fShorts {
                fBottom = FClothingItems.Bottom.fShorts
            }
        default:
            fForBottom()
        }
    }
    
    private func fTempFootAcc() {
        switch temp {
        case 0...60: break
        case 61...70: break
        case 71..<200:
            if fFootAcc != FClothingItems.Footwear.none {
                fFootAcc = FClothingItems.Footwear.none
            }
        default:
            fForFootAcc()
        }
        
    }

   

    
   
    
}

