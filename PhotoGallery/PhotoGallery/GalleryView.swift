//
//  GalleryView.swift
//  PhotoGallery
//
//  Created by macbook m1 on 16.06.22.
//

import UIKit

class GalleryView: UIViewController, UIImagePickerControllerDelegate & UINavigationControllerDelegate {
    
    var images:[UIImage] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func openPhotoGallery() {
        let imagePicker = UIImagePickerController()
        imagePicker.sourceType = .photoLibrary
        imagePicker.delegate = self
        self.present(imagePicker, animated: true)
    }
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        picker.dismiss(animated: true)
    }
    
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        
        let image = info[.originalImage] as? UIImage
        if let image = image {
            images.append(image)
        }
   
        picker.dismiss(animated: true)
    }

}
