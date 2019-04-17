//
//  ViewController.swift
//  ViewController
//
//  Created by MobileX on 16/04/2019.
//  Copyright © 2019 MobileX. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    var sosiArr = ["효연", "제시카", "서현", "수영", "써니", "태연", "티파니", "윤아", "유리"]
    var alphabet = ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "N", "M", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"]
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 2
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if (component == 0) {
            return sosiArr.count
        }
        else {
            return alphabet.count
        }
    }
    
    /*func pickerView(_ pickerView: UIPickerView, titleForRow row: Int ,forComponent component: Int) -> String? {
        if (component == 0) {
            let titleSosi =  "\(sosiArr[row])"
            return titleSosi
        }
        else {
            let titleAlphabet = "\(alphabet[row])"
            return titleAlphabet
        }
        
    }*/
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if (component == 0) {
            label.text = sosiArr[row]
        }
        else {
            label2.text = alphabet[row]
        }
    }
    
    /*func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView {
        let tempLabel = view as? UILabel
        if let label = tempLabel {
            if (component == 0) {
                label.text = sosiArr[row]
            }
            else {
                label.text = alphabet[row]
            }
            return label
        }
        else {
            let label = UILabel()
            label.textAlignment = .center
            if (component == 0) {
                label.text = sosiArr[row]
            }
            else {
                label.text = alphabet[row]
            }
            return label
        }
    }*/
    
    func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView {
        var label = view as? UILabel
        
        if label == nil {
            label = UILabel()
        }
        
        label!.textAlignment = .center
        
        if ( component == 0) {
            label!.text = sosiArr[row]
        }
        else {
            label!.text = alphabet[row]
        }
        return label!
        
    }
    
    @IBOutlet weak var picker: UIPickerView!
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var label2: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        picker.dataSource = self
        picker.delegate = self
        label.text = "소녀시대"
        label2.text = "알파벳"
    }
}
