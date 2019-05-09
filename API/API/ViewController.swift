//
//  ViewController.swift
//  API
//
//  Created by MobileX on 07/05/2019.
//  Copyright © 2019 MobileX. All rights reserved.
//


import UIKit
import WebKit

class ViewController: UIViewController {
    var strURL:String?
    @IBOutlet weak var webView: WKWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        if let strURL = strURL {
            if let url = URL(string: strURL) {
                let request = URLRequest(url: url)
                webView.load(request)
            }
        }
        
    }


}

