//
//  ViewController.swift
//  Race
//
//  Created by macbook m1 on 18.05.22.
//

import UIKit

extension UIButton {
    
    func drawShadow() {
        layer.masksToBounds = false
        layer.shadowColor = UIColor.orange.cgColor
        layer.shadowOpacity = 1
        layer.shadowOffset = CGSize(width: -1, height: 1)
        layer.shadowRadius = 10
    }
    func cornerRadius(radius: Int) {
        self.layer.cornerRadius = CGFloat(radius)
        self.clipsToBounds = true
    }
}

class ViewController: UIViewController {

    @IBOutlet var button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.title = "Гонки"

        button.drawShadow()
        button.cornerRadius(radius: 10)
        
    }
    @IBAction func didTapNextScreen() {
        let str: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let viewController: SecondViewController = str.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
        
        
        viewController.modalPresentationStyle = .fullScreen
        
       
        self.navigationController?.pushViewController(viewController, animated: true)

    }

}

