//
//  SecondViewController.swift
//  HomeWork 11
//
//  Created by macbook m1 on 23.05.22.
//

import UIKit

extension UIImageView {
    
    func shadow() {
        layer.masksToBounds = false
        layer.shadowColor = UIColor.blue.cgColor
        layer.shadowOpacity = 0.4
        layer.shadowOffset = CGSize(width: -1, height: 1)
        layer.shadowRadius = 15
        
    }
    
}

struct KeyDefaults {
    static let keyComent = "coment"
    
}
class SecondViewController: UIViewController {
    
    @IBOutlet var comentText: UITextField!
    @IBOutlet var likeButton: UIButton!
    @IBOutlet var constKey: NSLayoutConstraint!
    @IBOutlet var tapView: UIView!
    
    let defaults = UserDefaults.standard
    
    var imageView = UIImageView()
    let image = [UIImage(named: "im1"), UIImage(named: "im3"), UIImage(named: "im2")]
    var index = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        imageView.shadow()
        
        likeButton.setTitle( "1", for: .normal)
        likeButton.setTitle("2", for: .selected)
        
        comentText.text = defaults.string(forKey: KeyDefaults.keyComent)
        
        let tap = UITapGestureRecognizer(target: self, action: #selector(didTapView))
        tapView.addGestureRecognizer(tap)
        
    }
    @objc func didTapView() {
        view.endEditing(true)
    }
    
    
    @IBAction func didTapLike() {
        likeButton.isSelected = true
    }
    
    @IBAction func saveComent() {
        let coment = comentText.text
        
        defaults.set(coment, forKey: KeyDefaults.keyComent)
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        let center = NotificationCenter.default
        center.addObserver(self, selector: #selector(keyboardWillShow(notification:)), name: UIResponder.keyboardWillShowNotification, object: nil)
        center.addObserver(self, selector: #selector(keyboardWillHide(notification:)), name: UIResponder.keyboardWillHideNotification, object: nil)
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        
        let center = NotificationCenter.default
        center.removeObserver(self, name: UIResponder.keyboardWillShowNotification, object: nil)
        center.removeObserver(self, name: UIResponder.keyboardWillHideNotification, object: nil)
    }
    
    @objc func keyboardWillShow(notification: NSNotification) {
        guard let value = notification.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? NSValue else {
            return }
        constKey.constant = value.cgRectValue.size.height
        
        UIView.animate(withDuration: 0.5) {
            self.view.layoutIfNeeded()
        }

    }
    
    @objc func keyboardWillHide(notification: NSNotification) {
                constKey.constant = 0
        UIView.animate(withDuration: 0.5) {
            self.view.layoutIfNeeded()
        }
    }
    
    
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        imageGalery()
    }
    
    func imageGalery() {
        imageView.frame = CGRect(x: 0, y: 0, width: self.view.frame.width, height: 300)
        imageView.image = image[index]
        self.view.addSubview(imageView)
        
        let left = UISwipeGestureRecognizer(target: self, action: #selector(swipe))
        left.direction = .left
        self.view.addGestureRecognizer(left)
        
        let right = UISwipeGestureRecognizer(target: self, action: #selector(swipe))
        right.direction = .right
        self.view.addGestureRecognizer(right)
    }
    @objc func swipe(sender: UISwipeGestureRecognizer){
        switch sender.direction {
        case .left:
            UIView.animate(withDuration: 1) {
                self.imageView.frame = CGRect(x: (-1) * self.view.frame.width, y: 0, width: self.view.frame.width, height: 300)
            } completion: { animation in
                self.index = self.index + 1
                if self.index >= self.image.count {
                    self.index = 0
                }
                self.imageView.image = self.image[self.index]
                self.imageView.frame = CGRect(x: self.view.frame.width, y: 0, width: self.view.frame.width, height: 300)
    
                
                UIView.animate(withDuration: 1) {
                    self.imageView.frame = CGRect(x: 0, y: 0, width: self.view.frame.width, height: 300)
                }
            }
        case.right:
            UIView.animate(withDuration: 1) {
                self.imageView.frame = CGRect(x: (+1) * self.view.frame.width, y: 0, width: self.view.frame.width, height: 300)
            } completion: { animation in
                self.index = self.index + 1
                if self.index >= self.image.count {
                    self.index = 0
                }
                self.imageView.image = self.image[self.index]
                self.imageView.frame = CGRect(x: (-1) * self.view.frame.width, y: 0, width: self.view.frame.width, height: 300)
                
                UIView.animate(withDuration: 1) {
                    self.imageView.frame = CGRect(x: 0, y: 0, width: self.view.frame.width, height: 300)
                }
            }
        default:
            break
            
        }
        
    }
    @IBAction func didTapBack() {
        self.dismiss(animated: true)
    }
    
    
}
