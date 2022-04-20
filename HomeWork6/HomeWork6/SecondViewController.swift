//
//  SecondViewController.swift
//  HomeWork6
//
//  Created by macbook m1 on 20.04.22.
//

import UIKit

class SecondViewController: UIViewController {

    var movedView: UIView = UIView()
    var movedView1: UIView = UIView()
    var movedView2: UIView = UIView()
    var movedView3: UIView = UIView()
    var movedView4: UIView = UIView()
    var movedView5: UIView = UIView()
    var movedView6: UIView = UIView()
    var movedView7: UIView = UIView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
 
    override func viewWillAppear(_ animated: Bool) {
      super.viewWillAppear(animated)
        
    
    }
    
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        movedView.frame = CGRect(x: 20, y: 40, width: 150, height: 150)
        movedView.backgroundColor = .green
        self.view.addSubview(movedView)
        
        movedView1.frame = CGRect(x: 20, y: 210, width: 150, height: 150)
        movedView1.backgroundColor = .blue
        self.view.addSubview(movedView1)
        
        movedView2.frame = CGRect(x: 20, y: 380, width: 150, height: 150)
        movedView2.backgroundColor = .purple
        self.view.addSubview(movedView2)
        
        movedView3.frame = CGRect(x: 20, y: 550, width: 150, height: 150)
        movedView3.backgroundColor = .red
        self.view.addSubview(movedView3)
        
        movedView4.frame = CGRect(x: 200, y: 40, width: 150, height: 150)
        movedView4.backgroundColor = .orange
        self.view.addSubview(movedView4)
        
        movedView5.frame = CGRect(x: 200, y: 210, width: 150, height: 150)
        movedView5.backgroundColor = .black
        self.view.addSubview(movedView5)
        
        movedView6.frame = CGRect(x: 200, y: 380, width: 150, height: 150)
        movedView6.backgroundColor = .brown
        self.view.addSubview(movedView6)
        
        movedView7.frame = CGRect(x: 200, y: 550, width: 150, height: 150)
        movedView7.backgroundColor = .white
        self.view.addSubview(movedView7)
        
    }
    
    
}
