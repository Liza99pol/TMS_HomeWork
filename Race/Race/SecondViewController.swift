//
//  SecondViewController.swift
//  Race
//
//  Created by macbook m1 on 18.05.22.
//

import UIKit

class SecondViewController: UIViewController {

    var bushView = UIImageView()
    var imageView = UIImageView()
    var woodView = UIImageView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let panGesture = UIPanGestureRecognizer(target: self, action: #selector(moving))
        self.view.addGestureRecognizer(panGesture)
        
        let image = UIImage(named: "car")
         imageView = UIImageView(frame: CGRect(x: 200, y: 700, width: 100, height: 200))
        imageView.image = image
        self.view.addSubview(imageView)
        
        let bush = UIImage(named: "bush")
        bushView = UIImageView(frame: CGRect(x: -0, y: -0, width: 100, height: 100))
        bushView.image = bush
        self.view.addSubview(bushView)
        
        let wood = UIImage(named: "wood")
        woodView = UIImageView(frame: CGRect(x: 800, y: -0, width: 100, height: 100))
        woodView.image = wood
        self.view.addSubview(woodView)
        
        
        Timer.scheduledTimer(timeInterval: 3, target: self, selector: #selector(moveToWood), userInfo: nil, repeats: true)
        
        moveToCenter()
//        moveToWood()
        
        
        
    }
    
    
   @objc func moveToWood() {
        self.woodView.frame = CGRect(x: 200, y: 0, width: 100, height: 100)
        UIView.animate(withDuration: 3) {
            self.woodView.frame = CGRect(x: 300, y: 1000, width: 100, height: 100)
        } completion: { _ in
//            self.moveToWood()
        }

    }
    
    
    
        func moveToCenter() {
           
        self.bushView.frame = CGRect(x: 0, y: 0, width: 100, height: 100)

        UIView.animate(withDuration: 4) {
        self.bushView.frame = CGRect(x: 0, y: 1000, width: 100, height: 100)
        } completion: { _ in
            self.moveToCenter()
        }
            
            
//        UIView.animate(withDuration: 3) {
//            self.bushView.center = CGPoint(x: 90, y: 1000)
//        } completion: { animate in
//            let image2 = UIImage(named:"bush")
//            self.bushView = UIImageView(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
//            self.bushView.image = image2
//
//            UIView.animate(withDuration: 3) {
//                self.bushView.frame = CGRect(x: 90, y: 1000, width: 100, height: 100)
//            } completion: { _ in
//                self.moveToCenter()
//            }
//
//        }
    }
    @objc func moving(sender: UIPanGestureRecognizer) {
        
        if sender.state == .began {
            
        } else if sender.state == .changed {
            
            let translation = sender.translation(in: self.view)
            
            let newX = imageView.center.x + translation.x
            let newY = imageView.center.y + translation.y
            
            imageView.center = CGPoint(x: newX, y: newY)
            sender.setTranslation(CGPoint.zero, in: self.view)
        } else if sender.state == .ended {
            
        }
        
    }

}
