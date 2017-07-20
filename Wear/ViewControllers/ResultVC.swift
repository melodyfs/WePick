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
    
    var mTopArr = SwitchClothesService.shared.mTops
    var mTopAccArr = SwitchClothesService.shared.mTopAccs
    var mBottomArr = SwitchClothesService.shared.mBottoms
    var mFootArr = SwitchClothesService.shared.mFoots
    
    var fHeadImage = "\(Outfits.shared.fHead).png"
    var fTopImage = "\(Outfits.shared.fTop).png"
    var fTopAccImage = "\(Outfits.shared.fTopAcc).png"
    var fBottomImage = "\(Outfits.shared.fBottom).png"
    var fFootweaerImage = "\(Outfits.shared.fFootwear).png"
    var fFootAccImage = "\(Outfits.shared.fFootAcc).png"
    var fAccImage = "\(Outfits.shared.fAccessory).png"
    
    var selectedIndex = 0
    var tapCount = 0

    
    //MARK: - Outlets
    
    @IBOutlet weak var headImageView: UIImageView!
    @IBOutlet weak var topImageView: UIImageView!
    @IBOutlet weak var topAccImageView: UIImageView!
    @IBOutlet weak var bottomImageView: UIImageView!
    @IBOutlet weak var shoeImageView: UIImageView!
    @IBOutlet weak var accImageView: UIImageView!
    @IBOutlet weak var backgroundImageView: UIImageView!
    
    @IBOutlet weak var genderSegmentedControl: UISegmentedControl!
    
    @IBOutlet weak var changeTopButton: UIButton!
    
    //MARK: - Public Methods
    
    
    //MARK: - Private Methods
    
    
    //MARK: - Actions
    
    
    @IBAction func topImgTapped(_ sender: UITapGestureRecognizer) {
        
        switch selectedIndex {
        case 0:
            tapCount += 1
            
            print("tapped \(tapCount)")
            print("image touched")
            
            if tapCount >= mTopArr.count {
                tapCount = 0
                print(mTopArr[tapCount])
                
            } else {
                print(mTopArr[tapCount])
                
            }
        case 1: break
            
        default: break
            
        }
        
        print("change top img tapped")
        

        
    }
    
//    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
//        

    
    
    func changeTopTapped(sender: UITapGestureRecognizer) {
        
//        let touch = event.allTouches?.first!
    
//        topImageView. (self, action: #selector(getter: ResultVC.changeTopButton), for: UIControlEvents.touchDownRepeat))
        
        //change the top as user clicks on it multiple times
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
        let tapRecognizer = UITapGestureRecognizer(target: self, action: #selector(ResultVC.topImgTapped(_:)))
        tapRecognizer.numberOfTapsRequired = 1
        tapRecognizer.numberOfTouchesRequired = 1
        
        topImageView.isUserInteractionEnabled = true
        topImageView.addGestureRecognizer(tapRecognizer)
        
    }
    
}
