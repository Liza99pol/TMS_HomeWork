//
//  ScreenViewController.swift
//  HomeWork9
//
//  Created by macbook m1 on 5.05.22.
//

import UIKit

class ScreenViewController: UIViewController {

    var movedView: UIView = UIView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let panGesture = UIPanGestureRecognizer(target: self, action: #selector(moving))
        self.view.addGestureRecognizer(panGesture)
    }
    @objc func moving(sender: UIPanGestureRecognizer) {
        
        if sender.state == .began {
            
        } else if sender.state == .changed {
            
            let translation = sender.translation(in: self.view)
            
            let newX = movedView.center.x + translation.x
            let newY = movedView.center.y + translation.y
            
            movedView.center = CGPoint(x: newX, y: newY)
            sender.setTranslation(CGPoint.zero, in: self.view)
        } else if sender.state == .ended {
            
        }
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
      super.viewWillAppear(animated)
        
        movedView.frame = CGRect(x: 140, y: 360, width: 100, height: 100)
        movedView.backgroundColor = .blue
        movedView.layer.cornerRadius = 50
        self.view.addSubview(movedView)
        
    }
    
    
    
    
}
