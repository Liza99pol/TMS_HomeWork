//
//  BrowserViewController.swift
//  Browser HW 19
//
//  Created by macbook m1 on 28.06.22.
//

import UIKit
import WebKit

class BrowserViewController: UIViewController, WKNavigationDelegate {
    
    @IBOutlet var webView: WKWebView!
    @IBOutlet var textField: UITextField!
    
    var arrayHistory: [URL] = []
    var index = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
       
        
        webView.navigationDelegate = self
    }
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        print(webView.url)
    }
    
    @IBAction func search() {
        if let text = textField.text {
            if  let url = URL(string: text) {
            let requst = URLRequest(url: url)
            webView.load(requst)

            }
        }
    }
    
    @IBAction func nextInfo() {
        
        webView.goForward()
            
        }
       
        
    
    @IBAction func backInfo() {
        webView.goBack()
       
        
    }
    

}
