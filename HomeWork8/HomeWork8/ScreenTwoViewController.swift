//
//  ScreenTwoViewController.swift
//  HomeWork8
//
//  Created by macbook m1 on 28.04.22.
//

import UIKit

class ScreenTwoViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.title = "Игра началась"
    }
    
    
//
    @IBAction func didTapClose() {
        self.dismiss(animated: true)
    }
    
}
