//
//  SelectionTBC.swift
//  Wear
//
//  Created by Melody on 7/14/17.
//  Copyright © 2017 Melody Yang. All rights reserved.
//

import Foundation
import UIKit

class TBC: UITabBarController {
    
    //MARK: - Properties
    
    let photoHelper = PhotoService()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        photoHelper.completionHandler = { image in
//            print("handle image")
//        }
//        
//        delegate = self as UITabBarControllerDelegate
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    
    
}

extension TBC: UITabBarControllerDelegate {
//    func tabBarController(_ tabBarController: UITabBarController, shouldSelect viewController: UIViewController) -> Bool {
    
//        if viewController.tabBarItem.tag == 1 {
//            print("take photo")
//            photoHelper.presentActionSheet(from: self)
//            return false
//        } else {
//            
//            return true
//            
//        }
//}
//}
}
