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
    
    var headImage = "\(Outfits.shared.head).png"
    var topImage = "\(Outfits.shared.top).png"
    var topAccImage = "\(Outfits.shared.topAcc).png"
    var bottomImage = "\(Outfits.shared.bottom).png"
    var footweaerImage = "\(Outfits.shared.footwear).png"
    
    
    //MARK: - Outlets
    @IBOutlet weak var headImageView: UIImageView!
    @IBOutlet weak var topImageView: UIImageView!
    @IBOutlet weak var topAccImageView: UIImageView!
    @IBOutlet weak var bottomImageView: UIImageView!
    @IBOutlet weak var shoeImageView: UIImageView!
    
    
    //MARK: - Public Methods
    
            
    
    //MARK: - Private Methods
    
    
    
    //MARK: - Actions
    
    @IBAction func doneButton(_ sender: Any) {
        print("Done button tapped")
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        headImageView.image = UIImage(named: headImage)
        topImageView.image = UIImage(named: topImage)
        topAccImageView.image = UIImage(named: topAccImage)
        bottomImageView.image = UIImage(named: bottomImage)
        shoeImageView.image = UIImage(named: footweaerImage)
        
    }
    
    
    //MARK: - Override Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        CreateStyles.getStyle(description: WeatherData.shared.description)
//        CreateStyles.getStyleFromTemp(temp: WeatherData.shared.temperature)
    }
}
