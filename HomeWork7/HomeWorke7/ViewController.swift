//
//  ViewController.swift
//  HomeWorke7
//
//  Created by macbook m1 on 25.04.22.
//

import UIKit

enum ColorView {
    case view1
    case view2
    
    func colorView() -> UIColor {
        switch self {
        case.view1:
            return .green
        case.view2:
            return .orange
        }
        
    }
}
class ViewController: UIViewController {

    @IBOutlet var firstView: UIView!
    @IBOutlet var secondView: UIView!
    @IBOutlet var movedLabel: UILabel!
    @IBOutlet var movedLabel1: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func didtapFirstView() {
        firstView.frame = CGRect(x: 30, y: 90, width: 100, height: 100)
        self.view.addSubview(firstView)
        movedLabel.frame = firstView.bounds
        movedLabel.text = "Зеленый"
        movedLabel.textAlignment = .center
        firstView.addSubview(movedLabel)
        firstView.setColorStyle(colorImag: .view1)
        
        
        secondView.frame = CGRect(x: 100, y: 250, width: 100, height: 100)
        self.view.addSubview(secondView)
        movedLabel1.frame = secondView.bounds
        movedLabel1.text = "Оранжевый"
        movedLabel1.textAlignment = .center
        secondView.addSubview(movedLabel1)
        secondView.setColorStyle(colorImag: .view2)
    }
 
}
extension UIView {
    func setColorStyle(colorImag: ColorView) {
        self.backgroundColor = colorImag.colorView()
    }
}
