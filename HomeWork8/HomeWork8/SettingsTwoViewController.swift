//
//  SettingsTwoViewController.swift
//  HomeWork8
//
//  Created by macbook m1 on 28.04.22.
//

import UIKit

class SettingsTwoViewController: UIViewController {
    @IBOutlet var firstLable: UILabel!
    
    var user: User?
    
    @IBOutlet var SecondLable: UILabel!
    
    var user1: User?
    
    @IBOutlet var LastLable: UILabel!
    
    var user2: User?
    
        override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
            firstLable.text = user?.name
            SecondLable.text = user1?.name1
            LastLable.text = user2?.name2
    }
    @IBAction func didTapClose() {
        self.navigationController?.popToRootViewController(animated: true)
    }
    
}
