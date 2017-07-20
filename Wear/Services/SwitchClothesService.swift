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
    
    var mHeadCount = 0
    var mTopCount = 0
    var mTopAccCount = 0
    var mBottomCount = 0
    var mFootCount = 0
    
    var fHeadCount = 0
    var fTopCount = 0
    var fTopAccCount = 0
    var fBottomCount = 0
    var fFootCount = 0
    
    var mHeads: [MClothingItems.Head] = []
    var mTops: [MClothingItems.Top] = []
    var mTopAccs: [MClothingItems.TopAcc] = []
    var mBottoms: [MClothingItems.Bottom] = []
    var mShoes: [MClothingItems.Footwear] = []
    
    var fHeads: [FClothingItems.Head] = []
    var fTops: [FClothingItems.Top] = []
    var fTopAccs: [FClothingItems.TopAcc] = []
    var fBottoms: [FClothingItems.Bottom] = []
    var fShoes: [FClothingItems.Footwear] = []
    
    //MARK: - Male
    
    func mSortHead() {
        mCountHead()
        
        let iToRemove = MClothingItems.Head.none
        if let i = mHeads.index(of: iToRemove) {
            mHeads.remove(at: i)
        }
        mHeads = mHeads.sorted(by: {$0.rawValue < $1.rawValue})

    }
    
    func mSortTop() {
        mCountTop()
        
        let iToRemove = MClothingItems.Top.none
        if let i = mTops.index(of: iToRemove) {
            mTops.remove(at: i)
        }
        mTops = mTops.sorted(by: {$0.rawValue < $1.rawValue})
        
    }
    
    func mSortTopAcc() {
        mCountTopAcc()
        
        let iToRemove = MClothingItems.TopAcc.none
        if let i = mTopAccs.index(of: iToRemove) {
            mTopAccs.remove(at: i)
        }
        mTopAccs = mTopAccs.sorted(by: {$0.rawValue < $1.rawValue} )
    }
    
    func mSortBottomAcc() {
        mCountBottom()
        
        let iToRemove = MClothingItems.Bottom.none
        if let i = mBottoms.index(of: iToRemove) {
            mBottoms.remove(at: i)
        }
        mBottoms = mBottoms.sorted(by: {$0.rawValue < $1.rawValue} )
    }
    
    func mSortFoot() {
        mCountFoot()
        
        let iToRemove = MClothingItems.Footwear.none
        if let i = mShoes.index(of: iToRemove) {
            mShoes.remove(at: i)
        }
        mShoes = mShoes.sorted(by: {$0.rawValue < $1.rawValue} )
    }
    
    private func mCountHead() {
        for str in WeatherDataService.shared.iterateEnum(MClothingItems.Head.self) {
            mHeadCount += 1
            mHeads.append(str)
        }
    
    }
    
    private func mCountTop() {
        for str in WeatherDataService.shared.iterateEnum(MClothingItems.Top.self) {
            mTopCount += 1
            mTops.append(str)
        }
        
    }
    private func mCountTopAcc() {
        for str in WeatherDataService.shared.iterateEnum(MClothingItems.TopAcc.self) {
            mTopAccCount += 1
            mTopAccs.append(str)
        }
    }
    
    private func mCountBottom() {
        for str in WeatherDataService.shared.iterateEnum(MClothingItems.Bottom.self) {
            mBottomCount += 1
            mBottoms.append(str)
        }
    }
    
    private func mCountFoot() {
        for str in WeatherDataService.shared.iterateEnum(MClothingItems.Footwear.self) {
            mFootCount += 1
            mShoes.append(str)
        }
    }
    
    //MARK: - Female
    
    func fSortHead() {
        fCountHead()
        
        let iToRemove = FClothingItems.Head.none
        if let i = fHeads.index(of: iToRemove) {
            fHeads.remove(at: i)
        }
        fHeads = fHeads.sorted(by: {$0.rawValue < $1.rawValue})
        
    }
    
    func fSortTop() {
        fCountTop()
        
        let iToRemove = FClothingItems.Top.none
        if let i = fTops.index(of: iToRemove) {
            fTops.remove(at: i)
        }
        fTops = fTops.sorted(by: {$0.rawValue < $1.rawValue})
        
    }
    
    func fSortTopAcc() {
        fCountTopAcc()
        
        let iToRemove = FClothingItems.TopAcc.none
        if let i = fTopAccs.index(of: iToRemove) {
            fTopAccs.remove(at: i)
        }
        fTopAccs = fTopAccs.sorted(by: {$0.rawValue < $1.rawValue} )
    }
    
    func fSortBottomAcc() {
        fCountBottom()
        
        let iToRemove = FClothingItems.Bottom.none
        if let i = fBottoms.index(of: iToRemove) {
            fBottoms.remove(at: i)
        }
        fBottoms = fBottoms.sorted(by: {$0.rawValue < $1.rawValue} )
    }
    
    func fSortFoot() {
        fCountFoot()
        
        let iToRemove = FClothingItems.Footwear.none
        if let i = fShoes.index(of: iToRemove) {
            fShoes.remove(at: i)
        }
        fShoes = fShoes.sorted(by: {$0.rawValue < $1.rawValue} )
    }
    
    private func fCountHead() {
        for str in WeatherDataService.shared.iterateEnum(FClothingItems.Head.self) {
            fHeadCount += 1
            fHeads.append(str)
        }
        
    }
    
    private func fCountTop() {
        for str in WeatherDataService.shared.iterateEnum(FClothingItems.Top.self) {
            fTopCount += 1
            fTops.append(str)
        }
        
    }
    private func fCountTopAcc() {
        for str in WeatherDataService.shared.iterateEnum(FClothingItems.TopAcc.self) {
            fTopAccCount += 1
            fTopAccs.append(str)
        }
    }
    
    private func fCountBottom() {
        for str in WeatherDataService.shared.iterateEnum(FClothingItems.Bottom.self) {
            fBottomCount += 1
            fBottoms.append(str)
        }
    }
    
    private func fCountFoot() {
        for str in WeatherDataService.shared.iterateEnum(FClothingItems.Footwear.self) {
            fFootCount += 1
            fShoes.append(str)
        }
    }

    
}
