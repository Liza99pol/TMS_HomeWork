//
//  ViewController.swift
//  HomeWork21 ColorTable
//
//  Created by macbook m1 on 7.07.22.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
   
    
    @IBOutlet var tableView: UITableView!
    
    var array: [String] = ["Red", "Blue", "Green"]
   

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        tableView.delegate = self
        tableView.dataSource = self
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return array.count
       
    }
   
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0 {
        if  let cell = self.tableView.dequeueReusableCell(withIdentifier: "NameTableCell", for: indexPath) as? NameTableCell {
            
            cell.titleLable.text = array[indexPath.row]
         
            return cell
        }
        }
        if indexPath.row == 1 {
        if  let cell = self.tableView.dequeueReusableCell(withIdentifier: "NameTableCell2", for: indexPath) as? NameTableCell {
            
            cell.titleLable.text = array[indexPath.row]
         
            return cell
        }
        }
        
        if indexPath.row == 2 {
        if  let cell = self.tableView.dequeueReusableCell(withIdentifier: "NameTableCell3", for: indexPath) as? NameTableCell {
            
            cell.titleLable.text = array[indexPath.row]
         
            return cell
        }
        }
       
        return UITableViewCell()
    }
    
    @IBAction func didTapRedController() {
        let str: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let viewController: SecondViewController = str.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
        
        viewController.view.backgroundColor = .red
        
        viewController.modalPresentationStyle = .fullScreen
        
        self.present(viewController, animated: true)
        
    }
    @IBAction func didTapBlueController() {
        let str: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let viewController: SecondViewController = str.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
        
        viewController.view.backgroundColor = .blue
        
        viewController.modalPresentationStyle = .fullScreen
        
        self.present(viewController, animated: true)
        
    }
    @IBAction func didTapGreenController() {
        let str: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let viewController: SecondViewController = str.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
        
        viewController.view.backgroundColor = .green
        
        viewController.modalPresentationStyle = .fullScreen
        
        self.present(viewController, animated: true)
        
    }
    
}

