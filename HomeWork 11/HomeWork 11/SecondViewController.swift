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

class SecondViewController: UIViewController {

    var imageView = UIImageView()
    let image = [UIImage(named: "im1"), UIImage(named: "im3"), UIImage(named: "im2")]
    var index = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        imageView.shadow()
        
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
