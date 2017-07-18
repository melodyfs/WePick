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
    
    var mHeadImage = "\(Outfits.shared.head).png"
    var mTopImage = "\(Outfits.shared.top).png"
    var mTopAccImage = "\(Outfits.shared.topAcc).png"
    var mBottomImage = "\(Outfits.shared.bottom).png"
    var mFootweaerImage = "\(Outfits.shared.footwear).png"
    var mFootAccImage = "\(Outfits.shared.footAcc).png"
    var mAccImage = "\(Outfits.shared.accessory).png"
    
    
    var selectedIndex = 0
    
    
    //MARK: - Outlets
    @IBOutlet weak var headImageView: UIImageView!
    @IBOutlet weak var topImageView: UIImageView!
    @IBOutlet weak var topAccImageView: UIImageView!
    @IBOutlet weak var bottomImageView: UIImageView!
    @IBOutlet weak var shoeImageView: UIImageView!
    @IBOutlet weak var accImageView: UIImageView!
    
    @IBOutlet weak var genderSegmentedControl: UISegmentedControl!
    
    //MARK: - Public Methods
    
            
    
    //MARK: - Private Methods
    
    
    
    //MARK: - Actions
    
    @IBAction func doneButton(_ sender: Any) {
        print("Done button tapped")
        
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
            headImageView.image = UIImage(named: mHeadImage)
            topImageView.image = UIImage(named: mTopImage)
            topAccImageView.image = UIImage(named: mTopAccImage)
            bottomImageView.image = UIImage(named: mBottomImage)
            shoeImageView.image = UIImage(named: mFootweaerImage)
            accImageView.image = UIImage(named: mAccImage)
            
            print("Female")
        default:
            headImageView.image = UIImage(named: mHeadImage)
            topImageView.image = UIImage(named: mTopImage)
            topAccImageView.image = UIImage(named: mTopAccImage)
            bottomImageView.image = UIImage(named: mBottomImage)
            shoeImageView.image = UIImage(named: mFootweaerImage)
            accImageView.image = UIImage(named: mAccImage)
        }
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
         genderSegmentedControl.selectedSegmentIndex = selectedIndex

        
        headImageView.image = UIImage(named: mHeadImage)
        topImageView.image = UIImage(named: mTopImage)
        topAccImageView.image = UIImage(named: mTopAccImage)
        bottomImageView.image = UIImage(named: mBottomImage)
        shoeImageView.image = UIImage(named: mFootweaerImage)
        accImageView.image = UIImage(named: mAccImage)
    }
    
    
    //MARK: - Override Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
}
