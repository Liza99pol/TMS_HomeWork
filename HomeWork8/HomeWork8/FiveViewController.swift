//
//  FiveViewController.swift
//  HomeWork8
//
//  Created by macbook m1 on 28.04.22.
//

import UIKit

class FiveViewController: UIViewController {
    @IBOutlet var firstLable: UILabel!
    
    var customTitle: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        firstLable.text = customTitle
    }
    @IBAction func didTapClose() {
        self.navigationController?.popToRootViewController(animated: true)
    }
    
}
