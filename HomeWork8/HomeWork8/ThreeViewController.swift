//
//  ThreeViewController.swift
//  HomeWork8
//
//  Created by macbook m1 on 28.04.22.
//

import UIKit

class ThreeViewController: UIViewController {
    
    @IBOutlet var firstLable: UILabel!
    
    var customTitle: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        firstLable.text = customTitle
    }
    @IBAction func didTapNextScreen() {
        let str: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let viewController: FourViewController = str.instantiateViewController(withIdentifier: "FourViewController") as! FourViewController
        viewController.customTitle = "Hello Liza !"
        viewController.modalPresentationStyle = .fullScreen
        
        self.present(viewController, animated: true)
    }
    @IBAction func didTapClose() {
        self.dismiss(animated: true)
    }
    
}
