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
    
    var gameLiveTimer:Timer?
    var gameLiveTimer2:Timer?
    var woodTimer:Timer?
    var bushTimer:Timer?
    
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
        bushView = UIImageView(frame: CGRect(x: 800, y: -0, width: 100, height: 100))
        bushView.image = bush
        self.view.addSubview(bushView)
        
        let wood = UIImage(named: "wood")
        woodView = UIImageView(frame: CGRect(x: 800, y: -0, width: 100, height: 100))
        woodView.image = wood
        self.view.addSubview(woodView)
        
        
       gameLiveTimer =  Timer.scheduledTimer(timeInterval: 3, target: self, selector: #selector(moveToWood), userInfo: nil, repeats: true)
        
        gameLiveTimer2 = Timer.scheduledTimer(timeInterval: 5, target: self, selector: #selector(moveToCenter), userInfo: nil, repeats: true)
        
//        moveToCenter()
//        moveToWood()
        
        
        
    }
    
    
   @objc func moveToWood() {
       
       woodTimer?.invalidate()
        self.woodView.frame = CGRect(x: 200, y: 0, width: 100, height: 100)
       
       
       
       woodTimer = Timer.scheduledTimer(withTimeInterval: 0.004, repeats: true) { timer in
           self.woodView.frame.origin.y += 2
           if self.woodView.frame.intersects(self.imageView.frame) {
               
               self.woodTimer?.invalidate()
               self.gameLiveTimer?.invalidate()
               self.showError(title: "", message: "")
              
               
           }
       }
       
//        UIView.animate(withDuration: 3) {
//            self.woodView.frame = CGRect(x: 300, y: 1000, width: 100, height: 100)
//        } completion: { _ in
//            self.moveToWood()
//        }

    }
    
    
    
       @objc func moveToCenter() {
           bushTimer?.invalidate()
        self.bushView.frame = CGRect(x: 0, y: 0, width: 100, height: 100)

           bushTimer = Timer.scheduledTimer(withTimeInterval: 0.007, repeats: true, block: { timer in
               self.bushView.frame.origin.y += 2
               if self.bushView.frame.intersects(self.imageView.frame) {
                   
                   self.bushTimer?.invalidate()
                   self.gameLiveTimer2?.invalidate()
                   self.showError(title: "", message: "")
               }
           })
       
           
           
           
//        UIView.animate(withDuration: 4) {
//        self.bushView.frame = CGRect(x: 0, y: 1000, width: 100, height: 100)
//        } completion: { _ in
//            self.moveToCenter()
//        }
            
            
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
extension  UIViewController {
    
    func showError(title: String, message: String) {
        let allertViewController = UIAlertController(title: "Вы проиграли", message: "Для выхода нажмите <OK>", preferredStyle: .alert)
        let okButton = UIAlertAction(title: "OK", style: .default) { _ in
            self.navigationController?.popToRootViewController(animated: true)
            
        }
        
        allertViewController.addAction(okButton)
        self.present(allertViewController, animated: true)
        
    }
    
}
