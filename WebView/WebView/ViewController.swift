//
//  ViewController.swift
//  WebView
//
//  Created by MobileX on 01/05/2019.
//  Copyright © 2019 MobileX. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController {

    @IBOutlet weak var webView: WKWebView!
    @IBAction func Google(_ sender: Any) {
        let str = "http://www.google.co.kr"
        if let url = URL(string: str) {
            let request = URLRequest(url: url)
            webView.load(request)
        }
    }
    @IBAction func Naver(_ sender: Any) {
        let str = "http://www.naver.com"
        if let url = URL(string: str) {
            let request = URLRequest(url: url)
            webView.load(request)
        }
    }
    @IBAction func Daum(_ sender: Any) {
        let str = "http://www.daum.net"
        if let url = URL(string: str) {
            let request = URLRequest(url: url)
            webView.load(request)
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        /*let str = "http://www.naver.com"
        if let url = URL(string: str) {
            let request = URLRequest(url: url)
            webView.load(request)
        }*/
    }


}

