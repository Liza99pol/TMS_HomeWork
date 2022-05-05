//
//  ScreenViewController.swift
//  HomeWork8
//
//  Created by macbook m1 on 28.04.22.
//

import UIKit

class ScreenViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.title = "Гонки"
    }
    
    @IBAction func didTapNextScreen() {
        let str: UIStoryboard = UIStoryboard(name: "Screen", bundle: nil)
        let viewController: ScreenTwoViewController = str.instantiateViewController(withIdentifier: "ScreenTwoViewController") as! ScreenTwoViewController
        
        
        viewController.modalPresentationStyle = .fullScreen
        
       
        self.navigationController?.pushViewController(viewController, animated: true)
//        self.present(viewController, animated: true)
    }
    @IBAction func didTapSecondScreen() {
        let str: UIStoryboard = UIStoryboard(name: "Screen", bundle: nil)
        let viewController: ScreenThreViewController = str.instantiateViewController(withIdentifier: "ScreenThreViewController") as! ScreenThreViewController
        
        
        viewController.modalPresentationStyle = .fullScreen
        
        self.navigationController?.pushViewController(viewController, animated: true)
//        self.present(viewController, animated: true)
    }
    @IBAction func didTapLastScreen() {
        let str: UIStoryboard = UIStoryboard(name: "Screen", bundle: nil)
        let viewController: ScreenFourViewController = str.instantiateViewController(withIdentifier: "ScreenFourViewController") as! ScreenFourViewController
        
        
        viewController.modalPresentationStyle = .fullScreen
        
        self.navigationController?.pushViewController(viewController, animated: true)
//        self.present(viewController, animated: true)
}
    @IBAction func didTapClose() {
        self.navigationController?.popViewController(animated: true)
    }
}
