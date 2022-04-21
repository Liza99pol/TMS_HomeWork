//
//  ViewController.swift
//  Homework5
//
//  Created by macbook m1 on 17.04.22.
//

import UIKit


class Beer {
    let name: String
    let price: Double
    let country: String
    var volume: Int
    var remainder: Int
    
    init(name: String, price: Double, country: String, volume: Int = 200) {
        self.name = name
        self.price = price
        self.country = country
        self.volume = volume
        self.remainder = volume
    }
    func getBeerInfo() -> String {
        return "Пиво; \(name), цена: \(price), страна: \(country)"
    }
}
    
class manager {
    static let shared = manager()
    var beerArray: [Beer] = []
    init() { }

    func resetToDefaults() {
        beerArray.removeAll()
        beerArray.append(Beer(name: "Hoegaarden", price: 100.00, country: "бельг."))
        beerArray.append(Beer(name: "Corona Extra", price: 250.00, country: "мекс."))
    }
    
    func buyBeer(name: String, liters: Int = 1) -> String {
        for beer in beerArray{
            if beer.name == name {
                if beer.remainder - liters >= 0 {
                    beer.remainder = beer.remainder - liters
                    print(beer.remainder)
                    return "Пиво продано"
                }
                return "Пиво закончилось"
                
            }
        }
        return "Нет пива"
    }
    
    func getPriceStatus() -> Double {
        var sum = 0.0
        for beer in beerArray{
            sum = sum + (beer.price * Double(beer.volume - beer.remainder))
        }
        return sum
    }
    
    func getBarInfo() -> String {
        var info = ""
        for beer in beerArray {
            info = info + "Пиво: \(beer.name) страна: \(beer.country) цена: \(beer.price)руб. осталось: \(beer.remainder) л.\n"
            
        }
        return info
    }
    
}



class ViewController: UIViewController {

    @IBOutlet var menuLabel: UILabel!
    @IBOutlet var buyInfoLable: UILabel!
    @IBOutlet var sumInfoLabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        menuLabel.text = "Меню"
        menuLabel.textColor = UIColor.blue
        
        buyInfoLable.text = "Купить пиво"
        buyInfoLable.textColor = UIColor.orange
        
        sumInfoLabel.text = "Сумма"
        sumInfoLabel.textColor = UIColor.purple
        
    
    }
    @IBAction func didTapFirstButton(sender: UIButton) {
          
    }

}

