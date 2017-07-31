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
    
    @IBOutlet weak var coldButton: UIButton!
    @IBOutlet weak var middleButton: UIButton!
    @IBOutlet weak var hotButton: UIButton!
    @IBOutlet weak var dfButton: UIButton!
    
    var userTemp = UserTemp.shared.userTemp
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       self.navigationController?.navigationItem.hidesBackButton = true
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        //self.navigationController?.navigationItem.hidesBackButton = true
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        self.navigationController?.navigationItem.hidesBackButton = true
        
        if userTemp == "cold"{
            coldButton.isSelected = true
            coldButton.setBackgroundColor(color: .white, forState: .selected)
            
        }
        
        if userTemp == "middle"{
            middleButton.isSelected = true
            middleButton.setBackgroundColor(color: .white, forState: .selected)
            
        }
        
        if userTemp == "hot"{
            hotButton.isSelected = true
            hotButton.setBackgroundColor(color: .white, forState: .selected)
            
        }
        
        if userTemp == "df" {
            dfButton.isSelected = true
            dfButton.setBackgroundColor(color: .white, forState: .selected)
            
        }
        
    }
    
    @IBAction func coldButtonTapped(_ sender: UIButton) {
            sender.isSelected = true
            sender.setBackgroundColor(color: .white, forState: .selected)
        
            
            middleButton.isSelected = false
            hotButton.isSelected = false
            dfButton.isSelected = false
        
    }
    
    @IBAction func middleButtonTapped(_ sender: UIButton) {
            sender.isSelected = true
            sender.setBackgroundColor(color: .white, forState: .selected)
        
            
            coldButton.isSelected = false
            hotButton.isSelected = false
            dfButton.isSelected = false

    }
    
    @IBAction func hotButtonTapped(_ sender: UIButton) {
            sender.isSelected = true
            sender.setBackgroundColor(color: .white, forState: .selected)
        
            
            coldButton.isSelected = false
            middleButton.isSelected = false
            dfButton.isSelected = false
    }
    
    @IBAction func dfButtonTapped(_ sender: UIButton) {
            sender.isSelected = true
            sender.setBackgroundColor(color: .white, forState: .selected)
            UserTemp.shared.userTemp = "df"
            
            coldButton.isSelected = false
            middleButton.isSelected = false
            hotButton.isSelected = false
        
    }
    
    @IBAction func doneButtonTapped(_ sender: UIBarButtonItem) {
        if coldButton.isSelected {
            UserTemp.shared.userTemp = "cold"
        }
        
        if middleButton.isSelected {
            UserTemp.shared.userTemp = "middle"
        }
        
        if hotButton.isSelected {
            UserTemp.shared.userTemp = "hot"
        }
        
        self.navigationController!.popViewController(animated: true)
        dismiss(animated: true, completion: nil)
        
        
    }
    
    
    
}

