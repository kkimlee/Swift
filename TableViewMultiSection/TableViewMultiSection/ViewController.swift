//
//  ViewController.swift
//  TableViewMultiSection
//
//  Created by MobileX on 18/04/2019.
//  Copyright © 2019 MobileX. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource ,UIPickerViewDelegate, UITableViewDataSource{
    
    var sosiArr = ["효연", "제시카", "서현", "수영", "써니", "태연", "티파니", "윤아", "유리"]
    var sosiImg = ["a1.jpg", "a2.jpg", "a3.jpg", "a4.jpg", "a5.jpg", "a6.jpg", "a7.jpg", "a8.jpg", "a9.jpg"]
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
            return sosiImg.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        var cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell = UITableViewCell(style: .subtitle, reuseIdentifier: "cell")
        
        cell.textLabel?.text = "\(sosiArr[indexPath.row])"
        cell.imageView?.image = UIImage(named: sosiImg[indexPath.row])
        cell.detailTextLabel?.text = "\(indexPath.row)번째 멤버"
        
        
        return cell
    }
    
    
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 2
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if ( component == 0) {
            return sosiImg.count
        }
        else {
            return sosiArr.count
        }
        
    }
    
    func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView {
        
        let imageView = UIImageView()
        let label = UILabel()
        if( component == 0) {
            imageView.image = UIImage(named: sosiImg[row])
            return imageView
        }
        else {
            label.text = sosiArr[row]
            return label
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, widthForComponent component: Int) -> CGFloat {
        return 100
    }
    
    func pickerView(_ pickerView: UIPickerView, rowHeightForComponent component: Int) -> CGFloat {
        return 100
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if ( component == 0) {
            picker.selectRow(row, inComponent: 1, animated: true)
        }
        else {
            picker.selectRow(row, inComponent: 0, animated: true)
        }
    }
 
    
    
    
    
    
    
    @IBOutlet weak var picker: UIPickerView!
    @IBOutlet weak var table: UITableView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        table.dataSource = self
        picker.delegate = self
        picker.dataSource = self
       
    }


}

