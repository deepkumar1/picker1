//
//  ViewController.swift
//  ImagePicker
//
//  Created by DEEP KUMAR on 26/05/19.
//  Copyright © 2019 DEEP KUMAR. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UINavigationControllerDelegate, UIImagePickerControllerDelegate
{
    
   
    @IBAction func Button(_ sender: Any) {
        let image = UIImagePickerController()
//        image.sourceType = UIImagePickerController.SourceType.camera
        image.sourceType = UIImagePickerController.SourceType.photoLibrary
        image.delegate=self
        image.allowsEditing=true
        
        self.present(image, animated: true, completion: nil)
    
    }
//    func imagePickerController(_ picker: UIImagePickerController,
//                               didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]){
//        UIImageView.image=info[UiPickerControlleroriginalimage]
//
//    }
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        
        var selectedImage: UIImage?
        if let editedImage = info[.editedImage] as? UIImage {
            selectedImage = editedImage
            self.imagepicker.image = selectedImage!
            picker.dismiss(animated: true, completion: nil)
        } else if let originalImage = info[.originalImage] as? UIImage {
            selectedImage = originalImage
            self.imagepicker.image = selectedImage!
            picker.dismiss(animated: true, completion: nil)
        }
        
    }

    
    @IBOutlet weak var imagepicker: UIImageView!
    
    
    
    //didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]
    
    
    
}
