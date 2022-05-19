//
//  ViewController.swift
//  Race
//
//  Created by macbook m1 on 18.05.22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.title = "Гонки"
    }
    @IBAction func didTapNextScreen() {
        let str: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let viewController: SecondViewController = str.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
        
        
        viewController.modalPresentationStyle = .fullScreen
        
       
        self.navigationController?.pushViewController(viewController, animated: true)

    }

}

