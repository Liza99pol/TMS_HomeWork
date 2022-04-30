//
//  SettingsViewController.swift
//  HomeWork8
//
//  Created by macbook m1 on 28.04.22.
//

import UIKit
class User {
    var name: String = "Liza"
    var name1: String = "Denis"
    var name2: String = "Masha"
    
    init(){}
}

class SettingsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func didTapNextScreen() {
        let str: UIStoryboard = UIStoryboard(name: "Settings", bundle: nil)
        let viewController: SettingsTwoViewController = str.instantiateViewController(withIdentifier: "SettingsTwoViewController") as! SettingsTwoViewController
        
        let user: User = User()
        viewController.user = user
        viewController.user1 = user
        viewController.user2 = user
        
        
        viewController.modalPresentationStyle = .fullScreen
        
        self.present(viewController, animated: true)
    }
    @IBAction func didTapClose() {
        self.dismiss(animated: true)
    }
}
