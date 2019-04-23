//
//  ViewController.swift
//  MultiSection
//
//  Created by MobileX on 23/04/2019.
//  Copyright © 2019 MobileX. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    var arrSosi = ["호연", "제시카", "서현", "수영", "써니", "태연", "티파니", "윤아", "유리"]
    var arrExo = ["시우민", "디오", "첸", "백현", "세훈", "카이", "루한", "레이", "찬열", "수호", "크리스"]
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if (section == 0) {
            return arrSosi.count
        }
        else {
            return arrExo.count
        }
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let imageView = UIImageView()
        
        if (section == 0) {
            let image = UIImage(named: "소녀시대.jpg")
            imageView.image = image
        }
        
        return imageView
        
    }
    
    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        let imageView = UIImageView()
        
        if (section == 0) {
            let image = UIImage(named: "소녀시대.jpg")
            imageView.image = image
        }
        
        return imageView
        
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 100
    }
    
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 100
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        if (indexPath.section == 0) {
            cell.textLabel?.text = arrSosi[indexPath.row]
        }
        else {
            cell.textLabel?.text = arrExo[indexPath.row]
        }
        
        switch (indexPath.row % 5) {
        case 0: cell.accessoryType = .checkmark
        case 1: cell.accessoryType = .detailButton
        case 2: cell.accessoryType = .detailDisclosureButton
        case 3: cell.accessoryType = .disclosureIndicator
        default : cell.accessoryType = .none
        }
        
        return cell
    }
    
    
    
    
    
    
    
    
    @IBOutlet weak var table: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        table.dataSource = self
        table.delegate = self
        // Do any additional setup after loading the view, typically from a nib.
    }


}

