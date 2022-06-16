//
//  ViewController.swift
//  PhotoGallery
//
//  Created by macbook m1 on 16.06.22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func openGalleryView() {
        
        let alertViewController = UIAlertController(title: "Введите логин и пароль", message: "Для входа введите не менее 5 символов", preferredStyle: .alert)
        
        let okAction = UIAlertAction(title: "Войти", style: .default) { _ in
            
            if let textField = alertViewController.textFields?[0] {
                print(textField.text)
            }
            if let textField = alertViewController.textFields?[1] {
                print(textField.text)
            }
            let str: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
            let viewController: GalleryView = str.instantiateViewController(withIdentifier: "GalleryView") as! GalleryView
            
            
            viewController.modalPresentationStyle = .fullScreen
            
           
            self.navigationController?.pushViewController(viewController, animated: true)
        }
        
        let cancelAction = UIAlertAction(title: "Отмена", style: .destructive) { _ in
            print("Tap Отмена")
        }
        alertViewController.addTextField { textField in
            textField.placeholder = "Введите логин"
            textField.isSecureTextEntry = false
        }
        
        alertViewController.addTextField { textField in
            textField.placeholder = "Введите пароль"
            textField.isSecureTextEntry = true
        }
        alertViewController.addAction(okAction)
        alertViewController.addAction(cancelAction)
        self.present(alertViewController, animated: true)
        
    }


}

