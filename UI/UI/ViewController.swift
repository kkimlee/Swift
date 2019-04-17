//
//  ViewController.swift
//  UI
//
//  Created by MobileX on 10/04/2019.
//  Copyright © 2019 MobileX. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var count = 0
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var button: UIButton!
    @IBOutlet weak var segmentControl: UISegmentedControl!
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var switch1: UISwitch!
    @IBOutlet weak var progress: UIProgressView!
    @IBOutlet weak var stepper: UIStepper!
    @IBOutlet weak var datePicker: UIDatePicker!
    
    @IBAction func actTouch(_ sender: Any) {
        count = count + 1
        label.text = "\(count)번 누르셨네요."
    }
    @IBAction func actChange(_sender: Any) {
        label.text = "\(segmentControl.selectedSegmentIndex+1)번째를 누르셨습니다."
    }
    @IBAction func didEndOnExit(_ sender: Any) {
        textField.resignFirstResponder()
        label.text = textField.text
    }
    @IBAction func actSliderValueChange(_ sender: Any) {
        label.text = "\(slider.value)"
    }
    @IBAction func actSwitch(_ sender: Any) {
        if (switch1.isOn) {
            label.text = "스위치가 켜졌습니다."
        }
        else {
            label.text = "스위치가 꺼졌습니다."
        }
    }
    @IBAction func actStepperValueChange(_ sender: Any) {
        label.text = "\(stepper.value)"
        progress.progress = Float(stepper.value)
    }
    @IBAction func actDateChanged(_ sender: Any) {
        let date = datePicker.date
        let dateFormatter:DateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
        label.text = dateFormatter.string(from: date)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //View
        let view1 = UIView()
        view1.frame = CGRect(x: 100, y: 90, width: 200, height: 50)
        let color = UIColor(red: 0, green: 1, blue: 1, alpha: 1)
        view1.backgroundColor = color
        view.addSubview(view1)
        
        //Label
        let label1 = UILabel()
        label1.frame = CGRect(x: 130, y: 90, width: 200, height: 50)
        label1.text = "HelloWorld!"
        label1.font = UIFont.systemFont(ofSize:30)
        view.addSubview(label1)
        
        label.text = "안녕하세요?"
        label.textColor = UIColor(red: 1, green: 0, blue: 1, alpha: 1)
        label.backgroundColor = UIColor.orange
        label.font = UIFont.boldSystemFont(ofSize: 30)
        label.textAlignment = NSTextAlignment.center
        
        //Button
        button.setTitle("눌러주세요", for: UIControl.State.normal)
        button.setTitleColor(UIColor.blue, for: .normal)
        
        //SegmentControl
        segmentControl.setTitle("네번째", forSegmentAt: 3)
        segmentControl.setEnabled(false, forSegmentAt: 2)
        segmentControl.selectedSegmentIndex = 1
        
        //Slider
        slider.maximumValue = 100
        slider.minimumValue = -100
        slider.value = 0
        
        //Progress
        progress.progress = 0.0 // 0 ~ 1.0
        
        //Stepper
        stepper.minimumValue = 0
        stepper.maximumValue = 1
        stepper.stepValue = 0.05
        stepper.value = 0
    }
}


