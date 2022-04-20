//
//  FirstViewController.swift
//  HomeWork6
//
//  Created by macbook m1 on 20.04.22.
//

import UIKit

class FirstViewController: UIViewController {

    var movedView: UIView = UIView()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
      super.viewWillAppear(animated)
        
        movedView.frame = CGRect(x: 90, y: 100, width: 100, height: 100)
        movedView.layer.cornerRadius = 50
        movedView.backgroundColor = .blue
        self.view.addSubview(movedView)
      
    }
    
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        movedView.frame = CGRect(x: 150, y: 500, width: 100, height: 100)
        
    }
    
    @IBAction func removMoveView() {
        movedView.removeFromSuperview()

    }
  
    
    
}
