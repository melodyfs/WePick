//
//  ForecastVC.swift
//  Wear
//
//  Created by Melody on 8/10/17.
//  Copyright © 2017 Melody Yang. All rights reserved.
//

import UIKit

class ForecastVC: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    

}

extension ForecastVC: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ForecastCell") as! ForecastCell
        
        return cell
    }

    
}

extension ForecastVC: UITableViewDelegate {
    
}


