//
//  LastViewController.swift
//  HomeWork6
//
//  Created by macbook m1 on 20.04.22.
//

import UIKit

class LastViewController: UIViewController {

    var movedView: UIView = UIView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func viewWillAppear(_ animated: Bool) {
      super.viewWillAppear(animated)
        
        movedView.frame = CGRect(x: 140, y: 360, width: 100, height: 100)
        movedView.backgroundColor = .purple
        movedView.layer.cornerRadius = 50
        self.view.addSubview(movedView)
        
    }
    
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }
    
    
}
