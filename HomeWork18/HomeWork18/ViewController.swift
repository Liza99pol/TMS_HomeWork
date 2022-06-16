//
//  ViewController.swift
//  HomeWork18
//
//  Created by macbook m1 on 16.06.22.
//

import UIKit

class ViewController: UIViewController {
    
    var alertView: AlertView?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
//        let view = Bundle.main.loadNibNamed("Alert", owner: nil, options:nil)?.first
//        if let view = view as? AlertView {
//            alertView = view
//            alertView?.frame = CGRect(x: 0, y: 0, width: self.view.frame.width, height: self.view.frame.height)
//            self.view.addSubview(alertView!)
//        }
        
        
    }
    @IBAction func openXib() {
        let view = Bundle.main.loadNibNamed("Alert", owner: nil, options:nil)?.first
        if let view = view as? AlertView {
            alertView = view
            alertView?.frame = CGRect(x: 0, y: 0, width: self.view.frame.width, height: self.view.frame.height)
            self.view.addSubview(alertView!)
        }
    }
   

}

