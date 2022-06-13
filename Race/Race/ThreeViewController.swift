//
//  ThreeViewController.swift
//  Race
//
//  Created by macbook m1 on 12.06.22.
//

import UIKit

struct KeyDefaults {
    static let keyName = "name"
    static let keyCar = "car"
    static let keyBarrier = "carBarrier"
}

class ThreeViewController: UIViewController {
    
    let defaults = UserDefaults.standard
    
    @IBOutlet var nameUser: UITextField!
    @IBOutlet var carColor: UISegmentedControl!
    @IBOutlet var barrier: UISegmentedControl!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        nameUser.text = defaults.string(forKey: KeyDefaults.keyName)
        carColor.selectedSegmentIndex = defaults.integer(forKey: KeyDefaults.keyCar)
        barrier.selectedSegmentIndex = defaults.integer(forKey: KeyDefaults.keyBarrier)
    }
    @IBAction func saveSettings() {
       
        let name = nameUser.text!
        let car = carColor.selectedSegmentIndex
        let carBarrier = barrier.selectedSegmentIndex
        
        defaults.set(name, forKey: KeyDefaults.keyName)
        defaults.set(car, forKey: KeyDefaults.keyCar)
        defaults.set(carBarrier, forKey: KeyDefaults.keyBarrier)
        
    }
    
}
