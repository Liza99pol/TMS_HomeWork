//
//  ViewController.swift
//  HomeWork8
//
//  Created by macbook m1 on 28.04.22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.title = "Главное меню"
        
        let barButton = UIBarButtonItem(title: "next", style: .done, target: self, action: #selector (didTapNextScreen ))
        navigationItem.rightBarButtonItem = barButton
        
    }
    @IBAction func didTapNextScreen() {
        let str: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let viewController: FirstViewController = str.instantiateViewController(withIdentifier: "FirstViewController") as! FirstViewController
        
        viewController.customTitle = "Hello Liza !"
        
        viewController.modalPresentationStyle = .fullScreen
        
        self.navigationController?.pushViewController(viewController, animated: true)
        
//        self.present(viewController, animated: true)
    }
    @IBAction func didTapSettingsScreen() {
        let str: UIStoryboard = UIStoryboard(name: "Settings", bundle: nil)
        let viewController: SettingsViewController = str.instantiateViewController(withIdentifier: "SettingsViewController") as! SettingsViewController
        
        viewController.modalPresentationStyle = .fullScreen
        
        self.navigationController?.pushViewController(viewController, animated: true)
        
//        self.present(viewController, animated: true)
    }
    @IBAction func didTapScreenScreen() {
        let str: UIStoryboard = UIStoryboard(name: "Screen", bundle: nil)
        let viewController: ScreenViewController = str.instantiateViewController(withIdentifier: "ScreenViewController") as! ScreenViewController
        
        viewController.modalPresentationStyle = .fullScreen
        
        self.navigationController?.pushViewController(viewController, animated: true)
      
//        self.present(viewController, animated: true)
    }}



