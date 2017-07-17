//
//  WardrobeVC.swift
//  Wear
//
//  Created by Melody on 7/14/17.
//  Copyright © 2017 Melody Yang. All rights reserved.
//

import UIKit

class WardrobeVC: UIViewController {

    
    @IBOutlet weak var wardrobeCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    
    }
    

}

extension WardrobeVC : UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ItemThumbImgCell", for: indexPath) as! ItemCell
        
        return cell
    }
}
