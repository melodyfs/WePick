//
//  UserProfile.swift
//  Wear
//
//  Created by Melody on 7/30/17.
//  Copyright © 2017 Melody Yang. All rights reserved.
//

import Foundation
import UIKit

class UserProfileVC: UIViewController {
    
    static var shared = UserProfileVC()
    let uDF = UserDefaults.standard
    
    var degree = ""
    
    @IBOutlet weak var coldButton: UIButton!
    @IBOutlet weak var middleButton: UIButton!
    @IBOutlet weak var hotButton: UIButton!
    @IBOutlet weak var dfButton: UIButton!
    
    @IBOutlet weak var fDegreeButton: UIButton!
    @IBOutlet weak var cDegreeButton: UIButton!
    @IBOutlet weak var maleButton: CustomButton!
    @IBOutlet weak var femaleButton: CustomButton!
    
    var userTemp = UserTemp.shared.userTemp
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       self.navigationItem.hidesBackButton = true
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        self.navigationController?.navigationItem.hidesBackButton = true
        
        if userTemp == "cold"{
            coldButton.isSelected = true
            
        }
        
        if userTemp == "middle"{
            middleButton.isSelected = true
        }
        
        if userTemp == "hot"{
            hotButton.isSelected = true
           
        }
        
        if userTemp == "df" {
            dfButton.isSelected = true
        }
        
        if UserTemp.shared.degree == "c" {
            cDegreeButton.isSelected = true
        }
        
        if UserTemp.shared.degree == "f" {
            fDegreeButton.isSelected = true
        }
        
        if UserTemp.shared.gender == 0 {
            maleButton.isSelected = true
        }
        
        if UserTemp.shared.gender == 1 {
            femaleButton.isSelected = true
        }

        
    }
    
    @IBAction func coldButtonTapped(_ sender: UIButton) {
            sender.isSelected = true
            UserTemp.shared.userTemp = "cold"
            
            middleButton.isSelected = false
            hotButton.isSelected = false
            dfButton.isSelected = false
        
    }
    
    @IBAction func middleButtonTapped(_ sender: UIButton) {
            sender.isSelected = true
            UserTemp.shared.userTemp = "middle"
            
            coldButton.isSelected = false
            hotButton.isSelected = false
            dfButton.isSelected = false

    }
    
    @IBAction func hotButtonTapped(_ sender: UIButton) {
            sender.isSelected = true
            UserTemp.shared.userTemp = "hot"
            
            coldButton.isSelected = false
            middleButton.isSelected = false
            dfButton.isSelected = false
    }
    
    @IBAction func dfButtonTapped(_ sender: UIButton) {
            sender.isSelected = true
            UserTemp.shared.userTemp = "df"
            
            coldButton.isSelected = false
            middleButton.isSelected = false
            hotButton.isSelected = false
        
    }
    
    @IBAction func doneButtonTapped(_ sender: UIButton) {
        if coldButton.isSelected {
            uDF.set("cold", forKey: userTemp)
        }
        
        if middleButton.isSelected {
            uDF.set("middle", forKey: userTemp)

        }
        
        if hotButton.isSelected {
            uDF.set("hot", forKey: userTemp)
        }
        
        if dfButton.isSelected {
            uDF.set("df", forKey: userTemp)
        }
        
        if cDegreeButton.isSelected {
            UserTemp.shared.degree = "c"
            
        }
        
        if fDegreeButton.isSelected {
            UserTemp.shared.degree = ""
        }
        
        if maleButton.isSelected {
            uDF.set(0, forKey: "gender")
            UserTemp.shared.setUserGender(gender: 0)
        }
        
        if femaleButton.isSelected {
            UserTemp.shared.setUserGender(gender: 1)
            
        }
        
        dismiss(animated: true, completion: nil)
        
        
    }
    
    @IBAction func fButtonTapped(_ sender: UIButton) {
        sender.isSelected = true
        cDegreeButton.isSelected = false
        
        coldButton.setTitle("65~70", for: .normal)
        middleButton.setTitle("70~75", for: .normal)
        hotButton.setTitle("75~80", for: .normal)
        
    }
    
    @IBAction func cButtonTapped(_ sender: UIButton) {
        sender.isSelected = true
        fDegreeButton.isSelected = false
        
        coldButton.setTitle("18~21", for: .normal)
        middleButton.setTitle("21~24", for: .normal)
        hotButton.setTitle("23~27", for: .normal)
        
    }
    
    @IBAction func maleButtonTapped(_ sender: CustomButton) {
        sender.isSelected = true
        femaleButton.isSelected = false
        
    }
    
    @IBAction func femaleButtonTapped(_ sender: CustomButton) {
        sender.isSelected = true
        maleButton.isSelected = false
        
    }
    
       
    func close() {
        let transition = CATransition()
        transition.duration = 0.5
        transition.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseInEaseOut)
        transition.type = kCATransitionFade
        transition.subtype = kCATransitionFromBottom
        navigationController?.view.layer.add(transition, forKey:kCATransition)
        let _ = navigationController?.popViewController(animated: false)
    }
    
}

