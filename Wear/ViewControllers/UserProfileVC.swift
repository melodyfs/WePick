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
    
    var degree = ""
    
    @IBOutlet weak var coldButton: UIButton!
    @IBOutlet weak var middleButton: UIButton!
    @IBOutlet weak var hotButton: UIButton!
    @IBOutlet weak var dfButton: UIButton!
    
    @IBOutlet weak var fDegreeButton: UIButton!
    @IBOutlet weak var cDegreeButton: UIButton!
    
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
            coldButton.layer.cornerRadius = 5
            coldButton.setBackgroundColor(color: UIColor(red:0.99, green:0.65, blue:0.78, alpha:0.5), forState: .selected)
            
        }
        
        if userTemp == "middle"{
            middleButton.isSelected = true
            middleButton.layer.cornerRadius = 5
            middleButton.setBackgroundColor(color: UIColor(red:0.99, green:0.65, blue:0.78, alpha:0.5), forState: .selected)
            
        }
        
        if userTemp == "hot"{
            hotButton.isSelected = true
            hotButton.layer.cornerRadius = 5
            hotButton.setBackgroundColor(color: UIColor(red:0.99, green:0.65, blue:0.78, alpha:0.5), forState: .selected)
            
        }
        
        if userTemp == "df" {
            dfButton.isSelected = true
            dfButton.layer.cornerRadius = 5
            dfButton.setBackgroundColor(color: UIColor(red:0.99, green:0.65, blue:0.78, alpha:0.5), forState: .selected)
            
        }
        
    }
    
    @IBAction func coldButtonTapped(_ sender: UIButton) {
            sender.isSelected = true
            sender.setBackgroundColor(color: UIColor(red:0.99, green:0.65, blue:0.78, alpha:0.5), forState: .selected)
            coldButton.layer.cornerRadius = 5
            UserTemp.shared.userTemp = "cold"
            
            middleButton.isSelected = false
            hotButton.isSelected = false
            dfButton.isSelected = false
        
    }
    
    @IBAction func middleButtonTapped(_ sender: UIButton) {
            sender.isSelected = true
            sender.setBackgroundColor(color: UIColor(red:0.99, green:0.65, blue:0.78, alpha:0.5), forState: .selected)
            middleButton.layer.cornerRadius = 5
            UserTemp.shared.userTemp = "middle"
            
            coldButton.isSelected = false
            hotButton.isSelected = false
            dfButton.isSelected = false

    }
    
    @IBAction func hotButtonTapped(_ sender: UIButton) {
            sender.isSelected = true
            sender.setBackgroundColor(color: UIColor(red:0.99, green:0.65, blue:0.78, alpha:0.5), forState: .selected)
            hotButton.layer.cornerRadius = 5
            UserTemp.shared.userTemp = "hot"
            
            coldButton.isSelected = false
            middleButton.isSelected = false
            dfButton.isSelected = false
    }
    
    @IBAction func dfButtonTapped(_ sender: UIButton) {
            sender.isSelected = true
            sender.setBackgroundColor(color: UIColor(red:0.99, green:0.65, blue:0.78, alpha:0.5), forState: .selected)
            dfButton.layer.cornerRadius = 5
            UserTemp.shared.userTemp = "df"
            
            coldButton.isSelected = false
            middleButton.isSelected = false
            hotButton.isSelected = false
        
    }
    
    @IBAction func doneButtonTapped(_ sender: UIButton) {
        if coldButton.isSelected {
            UserTemp.shared.userTemp = "cold"
        }
        
        if middleButton.isSelected {
            UserTemp.shared.userTemp = "middle"
        }
        
        if hotButton.isSelected {
            UserTemp.shared.userTemp = "hot"
        }
        
        if cDegreeButton.isSelected {
            UserTemp.shared.degree = "c"
        } else {
            UserTemp.shared.degree = ""
        }
        //self.navigationController!.popViewController(animated: true)
        //close()
        dismiss(animated: true, completion: nil)
        
        
    }
    
    @IBAction func fButtonTapped(_ sender: UIButton) {
        sender.isSelected = true
        cDegreeButton.layer.cornerRadius = 5
        cDegreeButton.isSelected = false
        
        coldButton.setTitle("65~70", for: .normal)
        middleButton.setTitle("70~75", for: .normal)
        hotButton.setTitle("75~80", for: .normal)
        
    }
    
    @IBAction func cButtonTapped(_ sender: UIButton) {
        sender.isSelected = true
        fDegreeButton.isSelected = false
        fDegreeButton.layer.cornerRadius = 5
        
        coldButton.setTitle("18~21", for: .normal)
        middleButton.setTitle("21~24", for: .normal)
        hotButton.setTitle("23~27", for: .normal)
        
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
