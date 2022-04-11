//
//  ViewController.swift
//  HomeWork2
//
//  Created by macbook m1 on 8.04.22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        print(sum1(a:3, b:7, c:4))
        func sum1(a: Int, b: Int, c: Int) -> Int {
            return a + b + c
        }
        print(sum1(a:22.3, b:13.5))
        func sum1(a: Double, b: Double) -> Double {
            return a + b
        }
        print(min(a:25, b:6))
        func min(a: Int, b:Int) -> Int {
            return a - b
        }
        print(min(a:44.5, b:15.1))
        func min(a: Double, b: Double) -> Double {
            return a - b
        }
        print(umno(a:25, b:5))
        func umno(a: Int, b: Int) -> Int {
            return a*b
        }
        print(umno(a:2.6, b:4.3))
        func umno(a: Double, b: Double) -> Double {
            return a*b
        }
        print(del(a:18, b:6))
        func del(a: Int, b: Int) -> Int {
            return a/b
        }
        print(del(a:20.5, b:5.0))
        func del(a: Double, b: Double) -> Double {
            return a/b
        }
        // Задание 1
        
        print(sumTotal(number: 4263))
        func sumTotal(number: Int) -> Int {
            var sum = 0
            var number = number
            while number > 0 {
                sum = sum + number % 10
                number = number/10
                
            }
            return sum
        }
        // Задание 2
        
        print(alfav(a:"авб", b:"ввш"))
        func alfav(a:String, b:String)  {
            let a = "авб"
            let b = "ввш"
            if b > a {
                print("больше")
            } else {
                print("меньше")
            }
        }
        // Задание 3
        
        func cycl() {
            cycl()
        }
        print(cycl())

        // задание 4
        
        func power(number: Int, stepen: Int = 2) -> Int {
            let powerRes: Double = pow(Double(number), Double(stepen))
            return Int(powerRes)
        }
        print (power(number:5))
        
        // Задание 5
        
        func factorial(num: Int) {
            print(num)
            var num = num
            if num == 0 {
                return
            }
            num = num - 1
        factorial(num: num)
        }
        print(factorial(num: 13))
        // Задание 6
        
    }

}

