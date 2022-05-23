//
//  ViewController.swift
//  HomeWork 11
//
//  Created by macbook m1 on 16.05.22.
//

import UIKit

class ViewController: UIViewController {

    var imagView: UIView = UIView()
    var timer: Timer?
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        imagView.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
        imagView.backgroundColor = .green
        imagView.layer.cornerRadius = 50
        self.view.addSubview(imagView)
        
        timer = Timer.scheduledTimer(withTimeInterval: 2, repeats: true, block: { _ in
            self.moveToTop()
    })
//        moveToTop()
                                     
    }
    func moveToTop() {
        UIView.animate(withDuration: 1) {
            self.imagView.frame = CGRect(x: Int.random(in: 100...200), y: Int.random(in: 90...500), width: 100, height: 100)
        } completion: { animation in
//            self.moveToTop()
        }
    }
   
    @IBAction func didTapNextScreen() {
        let str: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        if  let viewController: SecondViewController = str.instantiateViewController(withIdentifier: "SecondViewController") as? SecondViewController{
            
            viewController.modalPresentationStyle = .fullScreen
            self.present(viewController, animated: true)
        }
    }
    
}
