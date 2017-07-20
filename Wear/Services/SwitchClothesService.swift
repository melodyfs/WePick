//
//  SwitchClothesService.swift
//  Wear
//
//  Created by Melody on 7/19/17.
//  Copyright © 2017 Melody Yang. All rights reserved.
//

import Foundation

//Switching clothing items as user taps in ResultVC
class SwitchClothesService {
    
    static var shared = SwitchClothesService()
    
    //MARK: - Male
    
    var mHeadCount = 0
    var mTopCount = 0
    var mTopAccCount = 0
    var mBottomCount = 0
    var mFootCount = 0
    
    var mHeads: [MClothingItems.Head] = []
    var mTops: [MClothingItems.Top] = []
    var mTopAccs: [MClothingItems.TopAcc] = []
    var mBottoms: [MClothingItems.Bottom] = []
    var mFoots: [MClothingItems.Footwear] = []
    
    
    func sortHead() {
        countHead()
        
        let iToRemove = MClothingItems.Head.none
        if let i = mHeads.index(of: iToRemove) {
            mTops.remove(at: i)
        }
        mHeads = mHeads.sorted(by: {$0.rawValue < $1.rawValue})

    }
    
    
    func sortTop() {
        countTop()
        
        let iToRemove = MClothingItems.Top.none
        if let i = mTops.index(of: iToRemove) {
            mTops.remove(at: i)
        }
        mTops = mTops.sorted(by: {$0.rawValue < $1.rawValue})
        
    }
    
    func sortTopAcc() {
        countTopAcc()
        
        let iToRemove = MClothingItems.TopAcc.none
        if let i = mTopAccs.index(of: iToRemove) {
            mTopAccs.remove(at: i)
        }
        mTopAccs = mTopAccs.sorted(by: {$0.rawValue < $1.rawValue} )
    }
    
    func sortBottomAcc() {
        countBottom()
        
        let iToRemove = MClothingItems.Bottom.none
        if let i = mBottoms.index(of: iToRemove) {
            mBottoms.remove(at: i)
        }
        mBottoms = mBottoms.sorted(by: {$0.rawValue < $1.rawValue} )
    }
    
    func sortFoot() {
        countFoot()
        
        let iToRemove = MClothingItems.Footwear.none
        if let i = mFoots.index(of: iToRemove) {
            mFoots.remove(at: i)
        }
        mFoots = mFoots.sorted(by: {$0.rawValue < $1.rawValue} )
    }
    
    private func countHead() {
        for str in WeatherDataService.shared.iterateEnum(MClothingItems.Head.self) {
            mHeadCount += 1
            mHeads.append(str)
        }
    
    }
    
    private func countTop() {
        for str in WeatherDataService.shared.iterateEnum(MClothingItems.Top.self) {
            mTopCount += 1
            mTops.append(str)
        }
        
    }
    private func countTopAcc() {
        for str in WeatherDataService.shared.iterateEnum(MClothingItems.TopAcc.self) {
            mTopAccCount += 1
            mTopAccs.append(str)
        }
    }
    
    private func countBottom() {
        for str in WeatherDataService.shared.iterateEnum(MClothingItems.Bottom.self) {
            mBottomCount += 1
            mBottoms.append(str)
        }
    }
    
    private func countFoot() {
        for str in WeatherDataService.shared.iterateEnum(MClothingItems.Footwear.self) {
            mFootCount += 1
            mFoots.append(str)
        }
    }
    

    
    
    
}
