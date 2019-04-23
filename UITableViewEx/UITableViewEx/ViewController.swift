//
//  ViewController.swift
//  UITableViewEx
//
//  Created by MobileX on 17/04/2019.
//  Copyright © 2019 MobileX. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    let alphabet = ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "N", "M", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"]
    var arrSosi = [["name":"효연", "img":"a1.jpg"], ["name":"제시카", "img":"a2.jpg"], ["name":"서현", "img":"a3.jpg"], ["name":"수영", "img":"a4.jpg"], ["name":"써니", "img":"a5.jpg"], ["name":"태연", "img":"a6.jpg"], ["name":"티파니", "img":"a7.jpg"], ["name":"윤아", "img":"a8.jpg"], ["name":"유리", "img":"a9.jpg"]]
    /*
     let arrName = ["호연", "제시카", "서현", "수영", "써니", "태연", "티파니", "윤아", "유리"]
    let arrSosi = ["a1.jpg", "a2.jpg", "a3.jpg", "a4.jpg", "a5.jpg", "a6.jpg", "a7.jpg", "a8.jpg", "a9.jpg"]
    */
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrSosi.count
    }
    
    /*func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        cell.textLabel?.text = alphabet[indexPath.row]
        return cell
        
    }*/
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        //let cell = UITableViewCell(style: .value2, reuseIdentifier: "cell")
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        let dic = arrSosi[indexPath.row]
        cell.imageView?.image = UIImage(named: dic["img"]!)
        cell.textLabel?.text = dic["name"]
        
        
        /*
        cell.imageView?.image = UIImage(named: arrSosi[indexPath.row])
        cell.textLabel?.text = arrName[indexPath.row]
        cell.detailTextLabel?.text = "\(indexPath.row+1)번째 멤버"
        */
        return cell
    }
    

    @IBOutlet weak var table: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        table.dataSource = self
    }


}

