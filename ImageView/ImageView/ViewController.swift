//
//  ViewController.swift
//  ImageView
//
//  Created by MobileX on 11/04/2019.
//  Copyright © 2019 MobileX. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var index = 0
    var arrSosi = ["a1.jpg", "a2.jpg", "a3.jpg", "a4.jpg", "a5.jpg", "a6.jpg", "a7.jpg", "a8.jpg", "a9.jpg"]
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var nextButton: UIButton!
    @IBOutlet weak var prevButton: UIButton!
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var pageControl: UIPageControl!
    
    fileprivate func display() {
        let image = UIImage(named:arrSosi[index])
        imageView.image = image
        label.text = "\(index+1)/\(arrSosi.count)"
        pageControl.currentPage = index
    }
    
    @IBAction func actPrev(_ sender: Any) {
        if (index == 0) {
            index = arrSosi.count - 1
            slider.value = slider.maximumValue
        }
        else if (index > 0) {
            index -= 1
            slider.value -= 1
        }
        display()
    }
    
    @IBAction func actNext(_ sender: Any) {
        if (index == arrSosi.count - 1) {
            index = 0
            slider.value = slider.minimumValue
        }
        else if (index < arrSosi.count-1) {
            index += 1
            slider.value += 1
        }
        display()
    }
    
    @IBAction func actSliderValueChange(_ sender: Any) {
        index = Int(slider.value)
        display()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        display()
    }
}
