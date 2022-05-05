//
//  ViewController.swift
//  HomeWork9
//
//  Created by macbook m1 on 5.05.22.
//

import UIKit

class ViewController: UIViewController {

    var viewArray:[UIView] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.title = "Game for Cats"
        
        let barBatton = UIBarButtonItem(title: "Next game", style: .done, target: self, action: #selector(didTapNextScreen))
        navigationItem.rightBarButtonItem = barBatton
        
        
        
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(didTapGesture))
        self.view.addGestureRecognizer(tapGesture)
        
    }
    @objc func didTapNextScreen() {
        let str: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let viewController: FirstViewController = str.instantiateViewController(withIdentifier: "FirstViewController") as! FirstViewController

        
        self.navigationController?.pushViewController(viewController, animated: true)
    }
    


    
    @objc func didTapGesture(sender: UITapGestureRecognizer) {
        
        for (index, view) in viewArray.enumerated() {
            let pointView = sender.location(in: view)
            if (pointView.x > 0 && pointView.x < 50) && (pointView.y > 0 && pointView.y < 50) {
                view.removeFromSuperview()
                viewArray.remove(at: index)
                return
            }
        }
        
        
        
        
        let circleview = UIView(frame: .init(x: 0, y: 0, width: 50, height: 50))
        let point = sender.location(in: self.view)
        
        circleview.layer.cornerRadius = 25
        circleview.clipsToBounds = true
        
        circleview.center = point
        circleview.backgroundColor = .purple
        
        viewArray.append(circleview)
        self.view.addSubview(circleview)
    }
}

