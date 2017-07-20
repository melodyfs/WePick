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
    var mShoeArr = SwitchClothesService.shared.mFoots
    
    var selectedIndex = 0
    var topTapCount = 0
    var bottomTapCount = 0
    var shoeTapCount = 0
    var headTapCount = 0

    
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
            topTapCount += 1
            print("tapped top")
            
            if topTapCount >= mTopArr.count {
                topTapCount = 0
                print(mTopArr[topTapCount])
                
            } else {
                print(mTopArr[topTapCount])
                
            }
        case 1: break
            
        default: break
            
        }
        
    }
    
    @IBAction func bottomImgTapped(_ sender: UITapGestureRecognizer) {
        
        switch selectedIndex {
        case 0:
            bottomTapCount += 1
            print("tapped bottom)")
            
            if bottomTapCount >= mBottomArr.count {
                bottomTapCount = 0
                print(mBottomArr[bottomTapCount])
                
            } else {
                print(mBottomArr[bottomTapCount])
                
            }
        case 1: break
            
        default: break
            
        }
        
    }
    
    
    @IBAction func headImgTapped(_ sender: UITapGestureRecognizer) {
        
        switch selectedIndex {
        case 0:
            headTapCount += 1
            print("tapped head)")
            
            if headTapCount >= mHeadArr.count {
                headTapCount = 0
                print(mHeadArr[headTapCount])
                
            } else {
                print(mHeadArr[headTapCount])
                
            }
        case 1: break
            
        default: break
            
        }
        
    }
    
    @IBAction func shoeImgTapped(_ sender: UITapGestureRecognizer) {
        
        switch selectedIndex {
        case 0:
            shoeTapCount += 1
            print("tapped shoe)")
            
            if shoeTapCount >= mShoeArr.count {
                shoeTapCount = 0
                print(mShoeArr[shoeTapCount])
                
            } else {
                print(mShoeArr[shoeTapCount])
                
            }
        case 1: break
            
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
