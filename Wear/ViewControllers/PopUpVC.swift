//
//  PopUpVC.swift
//  Wear
//
//  Created by Melody on 7/21/17.
//  Copyright © 2017 Melody Yang. All rights reserved.
//

import UIKit

class PopUpVC: UIViewController {
    
    //MARK: - Properties
    
    let uDefault = UserDefaults.standard
    
    //MARK: - Outlets
    
    @IBOutlet weak var coldTempButton: UIButton!
    @IBOutlet weak var middleButton: UIButton!
    @IBOutlet weak var hotButton: UIButton!
    @IBOutlet weak var dfButton: UIButton!
    
    //MARK: - Actions
    
    @IBAction func coldTempButtonTapped(_ sender: UIButton) {
        sender.isSelected = true
        uDefault.set("cold", forKey: "userTemp")
        UserTemp.shared.userTemp = "cold"
        sender.setBackgroundColor(color: .white, forState: .selected)
        
        
        middleButton.isSelected = false
        hotButton.isSelected = false
        dfButton.isSelected = false
        
        self.removeAnimate()
        
        let showResult = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "showResults") as! ResultVC
        navigationController?.pushViewController(showResult, animated: true)
    }
    
    @IBAction func middleTempButtonTapped(_ sender: UIButton) {
        sender.isSelected = true
        uDefault.set("middle", forKey: "userTemp")
        UserTemp.shared.userTemp = "middle"
        sender.setBackgroundColor(color: .white, forState: .selected)
        
        coldTempButton.isSelected = false
        hotButton.isSelected = false
        dfButton.isSelected = false
        
        self.removeAnimate()
        
        let showResult = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "showResults") as! ResultVC
        navigationController?.pushViewController(showResult, animated: true)
        
    }
    
    @IBAction func hotTempButtonTapped(_ sender: UIButton) {
        sender.isSelected = true
        uDefault.set("hot", forKey: "userTemp")
        UserTemp.shared.userTemp = "hot"
        sender.setBackgroundColor(color: .white, forState: .selected)
                
        coldTempButton.isSelected = false
        middleButton.isSelected = false
        dfButton.isSelected = false
        
        self.removeAnimate()
        
        let showResult = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "showResults") as! ResultVC
        navigationController?.pushViewController(showResult, animated: true)
    }
    
    @IBAction func dfTempButtonTapped(_ sender: UIButton) {
        sender.isSelected = true
        UserTemp.shared.userTemp = "df"
        sender.setBackgroundColor(color: .white, forState: .selected)
        
        coldTempButton.isSelected = false
        hotButton.isSelected = false
        middleButton.isSelected = false
        
        self.removeAnimate()
        
        let showResult = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "showResults") as! ResultVC
        navigationController?.pushViewController(showResult, animated: true)
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

extension UIButton {
    func setBackgroundColor(color: UIColor, forState: UIControlState) {
        UIGraphicsBeginImageContext(CGSize(width: 1, height: 1))
        UIGraphicsGetCurrentContext()!.setFillColor(color.cgColor)
        UIGraphicsGetCurrentContext()!.fill(CGRect(x: 0, y: 0, width: 1, height: 1))
        let colorImage = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        self.setBackgroundImage(colorImage, for: forState)
    }
}
