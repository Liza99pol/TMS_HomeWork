//
//  FourViewController.swift
//  HomeWork8
//
//  Created by macbook m1 on 28.04.22.
//

import UIKit

class FourViewController: UIViewController {
    
    @IBOutlet var firstLable: UILabel!
    
    var customTitle: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        firstLable.text = customTitle
    }
    @IBAction func didTapNextScreen() {
        let str: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let viewController: FiveViewController = str.instantiateViewController(withIdentifier: "FiveViewController") as! FiveViewController
        
        viewController.customTitle = "Hello Liza!"
        viewController.modalPresentationStyle = .fullScreen
        
        self.present(viewController, animated: true)
    }
    @IBAction func didTapClose() {
        self.dismiss(animated: true)
    }
}

