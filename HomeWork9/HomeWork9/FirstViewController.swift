//
//  FirstViewController.swift
//  HomeWork9
//
//  Created by macbook m1 on 5.05.22.
//

import UIKit

class FirstViewController: UIViewController {

    var movedView: UIView = UIView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.title = "Circle navigation"
        
        
        let barBatton = UIBarButtonItem(title: "Next game", style: .done, target: self, action: #selector(didTapNextScreen))
        navigationItem.rightBarButtonItem = barBatton
        
        let swipeGesture = UISwipeGestureRecognizer(target: self, action: #selector(вверх))
        swipeGesture.direction = .up
        self.view.addGestureRecognizer(swipeGesture)
        
        let swipeGesture2 = UISwipeGestureRecognizer(target: self, action: #selector(вниз))
        swipeGesture2.direction = .down
        self.view.addGestureRecognizer(swipeGesture2)
        
        let swipeGesture3 = UISwipeGestureRecognizer(target: self, action: #selector(вправо))
        swipeGesture3.direction = .right
        self.view.addGestureRecognizer(swipeGesture3)
        
        let swipeGesture4 = UISwipeGestureRecognizer(target: self, action: #selector(влево))
        swipeGesture4.direction = .left
        self.view.addGestureRecognizer(swipeGesture4)
        
    }
    @objc func didTapNextScreen() {
        let str: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let viewController: ScreenViewController = str.instantiateViewController(withIdentifier: "ScreenViewController") as! ScreenViewController

        
        self.navigationController?.pushViewController(viewController, animated: true)
    }
    
    
    
    
    @objc func вверх() {
        movedView.frame = CGRect(x: 140, y: 260, width: 100, height: 100)
    }
    @objc func вниз() {
        movedView.frame = CGRect(x: 140, y: 460, width: 100, height: 100)
        
    }
    @objc func вправо() {
        movedView.frame = CGRect(x: 40, y: 460, width: 100, height: 100)
        
    }
    @objc func влево() {
        movedView.frame = CGRect(x: 110, y: 460, width: 100, height: 100)
        
    }
    
    
    
    override func viewWillAppear(_ animated: Bool) {
      super.viewWillAppear(animated)
        
        movedView.frame = CGRect(x: 140, y: 360, width: 100, height: 100)
        movedView.backgroundColor = .green
        movedView.layer.cornerRadius = 50
        self.view.addSubview(movedView)
        
    }
    
    
    

}
