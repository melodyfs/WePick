//
//  UserTemp.swift
//  Wear
//
//  Created by Melody on 7/21/17.
//  Copyright © 2017 Melody Yang. All rights reserved.
//

import Foundation

class UserTemp {
    
    var userTemp = ""
    var gender = 0
    var degree = ""
    
    static var shared = UserTemp()
    
    func setUserTemp(userTemp: String) {
        self.userTemp = userTemp
    }
    
    func setUserGender(gender: Int) {
        self.gender = gender
    }
    
    
}
