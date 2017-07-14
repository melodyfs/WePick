//
//  PhotoService.swift
//  Wear
//
//  Created by Melody on 7/14/17.
//  Copyright © 2017 Melody Yang. All rights reserved.
//

import Foundation
import UIKit

class PhotoService: NSObject {
    
    //MARK: - Properties
    
    var completionHandler: ((UIImage) -> Void )?
    
    //MARK: - Methods
    
    func presentActionSheet(from tbc: UITabBarController) {
        
        let alertController = UIAlertController(title: nil, message: "Choose Your Clothing Item", preferredStyle: .actionSheet)
        
        if UIImagePickerController.isSourceTypeAvailable(.camera) {
            let capturePhotoAction = UIAlertAction(title: "Take Photo", style: .default, handler: {action in
                self.presentImagePickerController(with: .camera, from: tbc)
            })
            
            alertController.addAction(capturePhotoAction)
        }
        
        if UIImagePickerController
            .isSourceTypeAvailable(.photoLibrary) {
            let uploadAction = UIAlertAction(title: "Upload from Library", style: .default, handler: {action in
                self.presentImagePickerController(with: .photoLibrary, from: tbc)
            })
            
            alertController.addAction(uploadAction)
        }
        
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        alertController.addAction(cancelAction)
        
        tbc.present(alertController, animated: true)
        
    }
    
    func presentImagePickerController(with soureType: UIImagePickerControllerSourceType, from tbc: UITabBarController) {
        let imagePickerController = UIImagePickerController()
        imagePickerController.sourceType = soureType
        imagePickerController.delegate = self as? UIImagePickerControllerDelegate & UINavigationControllerDelegate
        
        tbc.present(imagePickerController, animated: true)
        
    }
}

extension PhotoService: UITabBarControllerDelegate, UIImagePickerControllerDelegate {
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        if let selectedImage = info[UIImagePickerControllerOriginalImage] as? UIImage {
            completionHandler?(selectedImage)
        }
        
        picker.dismiss(animated: true)
        
    }
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        picker.dismiss(animated: true)
    }
    
}


