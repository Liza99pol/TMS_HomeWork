//
//  ViewController.swift
//  HomeWork16
//
//  Created by macbook m1 on 2.06.22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var verticalCons: NSLayoutConstraint!
    @IBOutlet var menu: UIView!
    
    let bgView = UIView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        menu.layer.zPosition = 1000
        
//        let gesture = UITapGestureRecognizer(target: self, action: #selector(hiden))
//        self.view.addGestureRecognizer(gesture)
    }


    @IBAction func show() {
        
        verticalCons.constant = 0
        bgView.backgroundColor = .black
        bgView.frame = self.view.bounds
        self.view.addSubview(bgView)
        bgView.alpha = 0
        
        UIView.animate(withDuration: 1) {
            self.view.layoutIfNeeded()
            self.bgView.alpha = 0.7
        }
    }
    
    
    @IBAction func hiden() {
        
        verticalCons.constant = -250
        
        UIView.animate(withDuration: 1) {
            self.view.layoutIfNeeded()
            self.bgView.alpha = 0
        }
    }
    
    @IBAction func didTapShowAlert() {
        
        let alertViewController = UIAlertController(title: "Вход в аккаунт", message: "Для входа введите не менее 9 символов", preferredStyle: .alert)
        
        let okAction = UIAlertAction(title: "Войти", style: .default) { _ in
            
            if let textField = alertViewController.textFields {
                print(textField)
            }
        }
        
        let cancelAction = UIAlertAction(title: "Отмена", style: .destructive) { _ in
            print("Tap Отмена")
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
//extension UIView {
//    func blure(style: UIBlurEffect.Style = .dark) {
//        let blurEffect = UIBlurEffect(style: style)
//        let blurEffectView = UIVisualEffectView(effect: blurEffect)
//        blurEffectView.frame = bounds
//        blurEffectView.autoresizingMask = [.flexibleHeight, .flexibleWidth]
//        addSubview(blurEffectView)
//    }
//    func hidenBlure() {
//        for view in  self.subviews {
//            if view is  UIVisualEffectView {
//                view.removeFromSuperview()
//            }
//        }
//
//
//    }
//
//
//}

