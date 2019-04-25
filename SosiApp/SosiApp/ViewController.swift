//
//  ViewController.swift
//  SosiApp
//
//  Created by MobileX on 25/04/2019.
//  Copyright © 2019 MobileX. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var label: UILabel!
    
    var member: [String:String]? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let member1 = member {
            image.image = UIImage(named: member1["img"]!)
            label.text = member1["name"]
        }
       
        
        
        
        
    }


}

