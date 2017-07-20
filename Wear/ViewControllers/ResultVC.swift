//
//  RecommendationViewController.swift
//  Ear
//
//  Created by Melody on 6/26/17.
//  Copyright © 2017 Melody Yang. All rights reserved.
//

import Foundation
import UIKit

class ResultVC: UIViewController {
    
    //MARK: - Properties
    
    var mHeadImage = "\(Outfits.shared.mHead).png"
    var mTopImage = "\(Outfits.shared.mTop).png"
    var mTopAccImage = "\(Outfits.shared.mTopAcc).png"
    var mBottomImage = "\(Outfits.shared.mBottom).png"
    var mFootweaerImage = "\(Outfits.shared.mFootwear).png"
    var mFootAccImage = "\(Outfits.shared.mFootAcc).png"
    var mAccImage = "\(Outfits.shared.mAccessory).png"
    
    var fHeadImage = "\(Outfits.shared.fHead).png"
    var fTopImage = "\(Outfits.shared.fTop).png"
    var fTopAccImage = "\(Outfits.shared.fTopAcc).png"
    var fBottomImage = "\(Outfits.shared.fBottom).png"
    var fFootweaerImage = "\(Outfits.shared.fFootwear).png"
    var fFootAccImage = "\(Outfits.shared.fFootAcc).png"
    var fAccImage = "\(Outfits.shared.fAccessory).png"
    
    var mHeadArr = SwitchClothesService.shared.mHeads
    var mTopArr = SwitchClothesService.shared.mTops
    var mTopAccArr = SwitchClothesService.shared.mTopAccs
    var mBottomArr = SwitchClothesService.shared.mBottoms
    var mShoeArr = SwitchClothesService.shared.mShoes
    
    var fHeadArr = SwitchClothesService.shared.fHeads
    var fTopArr = SwitchClothesService.shared.fTops
    var fTopAccArr = SwitchClothesService.shared.fTopAccs
    var fBottomArr = SwitchClothesService.shared.fBottoms
    var fShoeArr = SwitchClothesService.shared.fShoes
    
    var selectedIndex = 0
    
    var mTopTapCount = 0
    var mBottomTapCount = 0
    var mShoeTapCount = 0
    var mHeadTapCount = 0
    
    var fTopTapCount = 0
    var fBottomTapCount = 0
    var fShoeTapCount = 0
    var fHeadTapCount = 0
    
    //MARK: - Outlets
    
    @IBOutlet weak var headImageView: UIImageView!
    @IBOutlet weak var topImageView: UIImageView!
    @IBOutlet weak var topAccImageView: UIImageView!
    @IBOutlet weak var bottomImageView: UIImageView!
    @IBOutlet weak var shoeImageView: UIImageView!
    @IBOutlet weak var accImageView: UIImageView!
    @IBOutlet weak var backgroundImageView: UIImageView!
    
    @IBOutlet weak var genderSegmentedControl: UISegmentedControl!
    
    
    //MARK: - Public Methods
    
    
    //MARK: - Private Methods
    
    
    //MARK: - Actions
    

    @IBAction func topImgTapped(_ sender: UITapGestureRecognizer) {
        
        switch selectedIndex {
        case 0:
            mTopTapCount += 1
            print("tapped top")
            
            if mTopTapCount >= mTopArr.count {
                mTopTapCount = 0
                mTopImage = "\(mTopArr[mTopTapCount]).png"
                print(mTopArr[mTopTapCount])
                
            } else {
                mTopImage = "\(mTopArr[mTopTapCount]).png"
                print(mTopArr[mTopTapCount])
                
            }
        case 1:
            fTopTapCount += 1
            print("tapped ftop")
            
            if fTopTapCount >= fTopArr.count {
                fTopTapCount = 0
                fTopImage = "\(fTopArr[fTopTapCount]).png"
                print(fTopArr[fTopTapCount])
                
            } else {
                fTopImage = "\(fTopArr[fTopTapCount]).png"
                print(fTopArr[fTopTapCount])
                
            }
        default: break
            
        }
        
    }
    
    @IBAction func bottomImgTapped(_ sender: UITapGestureRecognizer) {
        
        switch selectedIndex {
        case 0:
            mBottomTapCount += 1
            print("tapped bottom)")
            
            if mBottomTapCount >= mBottomArr.count {
                mBottomTapCount = 0
                mBottomImage = "\(mBottomArr[mBottomTapCount]).png"
                print(mBottomArr[mBottomTapCount])
                
            } else {
                mBottomImage = "\(mBottomArr[mBottomTapCount]).png"
                print(mBottomArr[mBottomTapCount])
                
            }
        case 1:
            fBottomTapCount += 1
            print("tapped fbottom)")
            
            if fBottomTapCount >= fBottomArr.count {
                fBottomTapCount = 0
                fBottomImage = "\(fBottomArr[fBottomTapCount]).png"
                print(fBottomArr[fBottomTapCount])
                
            } else {
                fBottomImage = "\(fBottomArr[fBottomTapCount]).png"
                print(fBottomArr[fBottomTapCount])
            }
        default: break
        }
        
    }
    
    
    @IBAction func headImgTapped(_ sender: UITapGestureRecognizer) {
        
        switch selectedIndex {
        case 0:
            mHeadTapCount += 1
            print("tapped head)")
            
            if mHeadTapCount >= mHeadArr.count {
                mHeadTapCount = 0
                mHeadImage = "\(mHeadArr[mHeadTapCount]).png"
                print(mHeadArr[mHeadTapCount])
                
            } else {
                mHeadImage = "\(mHeadArr[mHeadTapCount]).png"
                print(mHeadArr[mHeadTapCount])
                
            }
        case 1:
            fHeadTapCount += 1
            print("tapped fhead)")
            
            if fHeadTapCount >= fHeadArr.count {
                fHeadTapCount = 0
                fHeadImage = "\(fHeadArr[fHeadTapCount]).png"
                print(fHeadArr[fHeadTapCount])
                
            } else {
                fHeadImage = "\(fHeadArr[fHeadTapCount]).png"
                print(fHeadArr[fHeadTapCount])
                
            }
        default: break
        }
        
    }
    
    @IBAction func shoeImgTapped(_ sender: UITapGestureRecognizer) {
        
        switch selectedIndex {
        case 0:
            mShoeTapCount += 1
            print("tapped shoe)")
            
            if mShoeTapCount >= mShoeArr.count {
                mShoeTapCount = 0
                mFootweaerImage = "\(mShoeArr[mShoeTapCount]).png"
                print(mShoeArr[mShoeTapCount])
                
            } else {
                mFootweaerImage = "\(mShoeArr[mShoeTapCount]).png"
                print(mShoeArr[mShoeTapCount])
                
            }
        case 1:
            fShoeTapCount += 1
            print("tapped fshoe)")
            
            if fShoeTapCount >= fShoeArr.count {
                fShoeTapCount = 0
                fFootweaerImage = "\(fShoeArr[fShoeTapCount]).png"
                print(fShoeArr[fShoeTapCount])
                
            } else {
                fFootweaerImage = "\(fShoeArr[fShoeTapCount]).png"
                print(fShoeArr[fShoeTapCount])
                
            }
        default: break
        }
        
    }
    
    @IBAction func genderSelector(_ sender: Any) {
        selectedIndex = (sender as AnyObject).selectedSegmentIndex
        
        switch selectedIndex {
        case 0:
            headImageView.image = UIImage(named: mHeadImage)
            topImageView.image = UIImage(named: mTopImage)
            topAccImageView.image = UIImage(named: mTopAccImage)
            bottomImageView.image = UIImage(named: mBottomImage)
            shoeImageView.image = UIImage(named: mFootweaerImage)
            accImageView.image = UIImage(named: mAccImage)
            
            print("Male")
        case 1:
            headImageView.image = UIImage(named: fHeadImage)
            topImageView.image = UIImage(named: fTopImage)
            topAccImageView.image = UIImage(named: fTopAccImage)
            bottomImageView.image = UIImage(named: fBottomImage)
            shoeImageView.image = UIImage(named: fFootweaerImage)
            accImageView.image = UIImage(named: fAccImage)
            
//            Outfits.shared.fGetClothingCombo(WeatherData.shared)
//            Outfits.shared.fPrintSetting()
            
            print("Female")
            print("-----")
        default:
            break
        }
    }
    
    //MARK: - Override Methods
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        
        
        genderSegmentedControl.selectedSegmentIndex = selectedIndex
        
        headImageView.image = UIImage(named: mHeadImage)
        topImageView.image = UIImage(named: mTopImage)
        topAccImageView.image = UIImage(named: mTopAccImage)
        bottomImageView.image = UIImage(named: mBottomImage)
        shoeImageView.image = UIImage(named: mFootweaerImage)
        accImageView.image = UIImage(named: mAccImage)
        
        WeatherDataService.shared.getOutfits(WeatherData.shared)
        Outfits.shared.getClothingCombo(WeatherData.shared)
        Outfits.shared.printSetting()
        
        print("DF")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let topTapRecognizer = UITapGestureRecognizer(target: self, action: #selector(ResultVC.topImgTapped(_:)))
        topTapRecognizer.numberOfTapsRequired = 1
        topTapRecognizer.numberOfTouchesRequired = 1
        topImageView.isUserInteractionEnabled = true
        topImageView.addGestureRecognizer(topTapRecognizer)
        
        let bottomTapRecognizer = UITapGestureRecognizer(target: self, action: #selector(ResultVC.bottomImgTapped(_:)))
        bottomTapRecognizer.numberOfTapsRequired = 1
        bottomTapRecognizer.numberOfTouchesRequired = 1
        bottomImageView.isUserInteractionEnabled = true
        bottomImageView.addGestureRecognizer(bottomTapRecognizer)
        
        let headTapRecognizer = UITapGestureRecognizer(target: self, action: #selector(ResultVC.headImgTapped(_:)))
        headTapRecognizer.numberOfTapsRequired = 1
        headTapRecognizer.numberOfTouchesRequired = 1
        headImageView.isUserInteractionEnabled = true
        headImageView.addGestureRecognizer(headTapRecognizer)

        let shoeTapRecognizer = UITapGestureRecognizer(target: self, action: #selector(ResultVC.shoeImgTapped(_:)))
        shoeTapRecognizer.numberOfTapsRequired = 1
        shoeTapRecognizer.numberOfTouchesRequired = 1
        shoeImageView.isUserInteractionEnabled = true
        shoeImageView.addGestureRecognizer(shoeTapRecognizer)

        
        
    }
    
}
