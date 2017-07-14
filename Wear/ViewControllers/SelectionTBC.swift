//
//  SelectionViewController.swift
//  Wear
//
//  Created by Melody on 7/13/17.
//  Copyright © 2017 Melody Yang. All rights reserved.
//

import UIKit

class SelectionTBC: UITabBarController {
    
    //MARK: - Properties
    
    let photoHelper = PhotoService()
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        photoHelper.completionHandler = { image in
            print("handle image")
        }
        
        delegate = self as UITabBarControllerDelegate

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

extension SelectionTBC: UITabBarControllerDelegate {
    func tabBarController(_ tabBarController: UITabBarController, shouldSelect viewController: UIViewController) -> Bool {
        
        if viewController.tabBarItem.tag == 1 {
            print("take photo")
            photoHelper.presentActionSheet(from: self)
            return false
        } else {
        
        return true
        
        }
    }
}
