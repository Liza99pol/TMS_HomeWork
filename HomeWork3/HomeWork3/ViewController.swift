//
//  ViewController.swift
//  HomeWork3
//
//  Created by macbook m1 on 12.04.22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        var animals: [(Int, String)] = [(3, "Собаки"), (2, "Кота")]
        animals.append((6, "Попугаев"))
        
        var animals1 = animals.map { element in
            return element.0 * element.0
            
        }
        
        var filterAnimals = animals.filter {element in
            return element.0 % 2 == 0
            
        }
        var animalSorted = animals.sorted { element1, element2 in
            return element1 < element2
            
        }
        print(animals)
        print(animals1)
        print(filterAnimals)
        print(animalSorted)
        
    }


}

