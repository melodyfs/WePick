//
//  PopUpVC.swift
//  Wear
//
//  Created by Melody on 7/21/17.
//  Copyright © 2017 Melody Yang. All rights reserved.
//

import UIKit

class PopUpVC: UIViewController {
    
    @IBAction func coldTempButton(_ sender: Any) {
        
    }
    
    @IBAction func middleTempButton(_ sender: Any) {
    }
    
    @IBAction func hotTempButton(_ sender: Any) {
    }
    
    @IBAction func dfTempButton(_ sender: Any) {
    }
    
    @IBAction func donePopUp(_ sender: Any) {
        self.removeAnimate()
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        self.showAnimate()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
       
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
