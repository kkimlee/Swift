//
//  ViewController.swift
//  CustomTable
//
//  Created by MobileX on 23/04/2019.
//  Copyright © 2019 MobileX. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrSosi.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "sosicell", for: indexPath)
        let dic = arrSosi[indexPath.row]
        let imageView = cell.viewWithTag(1) as? UIImageView
        imageView?.image = UIImage(named: dic["img"]!)
        let label1 = cell.viewWithTag(2) as? UILabel
        label1?.text = dic["name"]
        let imageView2 = cell.viewWithTag(3) as? UIImageView
        imageView2?.image = UIImage(named:"소녀시대.jpg")
        let label3 = cell.viewWithTag(4) as? UILabel
        label3?.text = "\(indexPath.row+1)번째 멤버"
        return cell
    }
    
    var arrSosi = [["name":"효연", "img":"a1.jpg"], ["name":"제시카", "img":"a2.jpg"], ["name":"서현", "img":"a3.jpg"], ["name":"수영", "img":"a4.jpg"], ["name":"써니", "img":"a5.jpg"], ["name":"태연", "img":"a6.jpg"], ["name":"티파니", "img":"a7.jpg"], ["name":"윤아", "img":"a8.jpg"], ["name":"유리", "img":"a9.jpg"]]
    
    @IBOutlet weak var table: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        table.dataSource = self
        table.rowHeight = 100
    }
}

