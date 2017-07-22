//
//  PopUpVC.swift
//  Wear
//
//  Created by Melody on 7/21/17.
//  Copyright © 2017 Melody Yang. All rights reserved.
//

import UIKit

class PopUpVC: UIViewController {
    
    //MARK: - Outlets
    
    @IBOutlet weak var coldTempButton: UIButton!
    @IBOutlet weak var middleButton: UIButton!
    @IBOutlet weak var hotButton: UIButton!
    @IBOutlet weak var dfButton: UIButton!
    
    //MARK: - Actions
    
    @IBAction func coldTempButtonTapped(_ sender: UIButton) {
        sender.isSelected = true
        
        middleButton.isSelected = false
        hotButton.isSelected = false
        dfButton.isSelected = false
        
    }
    
    @IBAction func middleTempButtonTapped(_ sender: UIButton) {
        sender.isSelected = true
//        selectButton(button: middleButton)
        
        coldTempButton.isSelected = false
        hotButton.isSelected = false
        dfButton.isSelected = false
        
    }
    
    @IBAction func hotTempButtonTapped(_ sender: UIButton) {
        sender.isSelected = true
//        selectButton(button: hotButton)
        
        coldTempButton.isSelected = false
        middleButton.isSelected = false
        dfButton.isSelected = false
    }
    
    @IBAction func dfTempButtonTapped(_ sender: UIButton) {
        sender.isSelected = true
//        selectButton(button: dfButton)
        
        coldTempButton.isSelected = false
        hotButton.isSelected = false
        middleButton.isSelected = false
    }
    
    @IBAction func donePopUp(_ sender: Any) {
        self.removeAnimate()
        if coldTempButton.isSelected {
            UserTemp.shared.setUserTemp(userTemp: "cold")
        }
        
        if middleButton.isSelected {
            UserTemp.shared.setUserTemp(userTemp: "middle")
        }
        
        if hotButton.isSelected {
            UserTemp.shared.setUserTemp(userTemp: "hot")
        }
        
        
  //      HomeVC.shared.startButton.backgroundColor = UIColor(red:0.62, green:0.64, blue:1.00, alpha:0.45)
    }
    
    //MARK: - Functions
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.showAnimate()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
       
    }
    
    func selectButton(button: UIButton) {
        if button.isSelected {
            button.backgroundColor = UIColor.red
        }
        
        
    }
    
    func showAnimate() {
        self.view.transform = CGAffineTransform(scaleX: 1.3, y: 1.3)
        self.view.alpha = 0.0;
        UIView.animate(withDuration: 0.25, animations: {
            self.view.alpha = 1.0
            self.view.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
        });
    }
    
    func removeAnimate() {
        UIView.animate(withDuration: 0.25, animations: {
            self.view.transform = CGAffineTransform(scaleX: 1.3, y: 1.3)
            self.view.alpha = 0.0;
        }, completion:{(finished : Bool)  in
            if (finished)
            {
                self.view.removeFromSuperview()
            }
        });
    }
    

}
