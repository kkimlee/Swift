//
//  ViewController.swift
//  UIImagePickerController
//
//  Created by MobileX on 14/05/2019.
//  Copyright © 2019 MobileX. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    let picker = UIImagePickerController();

    @IBOutlet weak var imageView: UIImageView!
    @IBAction func actPhoto(_ sender: Any) {
        let alert = UIAlertController(title: "사진사용", message: "사진을 어디서 가져올까요?", preferredStyle:.actionSheet)
        let action1 = UIAlertAction(title: "포토라이브러리", style: .default, handler: handler1Action)
        alert.addAction(action1)
        let action2 = UIAlertAction(title: "촬영", style: .default, handler: handler2Action)
        alert.addAction(action2)
        let action3 = UIAlertAction(title: "취소", style: .cancel, handler: nil)
        alert.addAction(action3)
        
        present(alert, animated: true, completion: nil)
    }
    
    
    @IBAction func actSave(_ sender: Any) {
        if let data = imageView.image?.jpegData(compressionQuality: 0.8) {
            let filename = getDocumentFolder().appendingPathComponent("sample.png")
            try? data.write(to: filename)
        }
    }
    
    func handler1Action(action:UIAlertAction) {
        picker.sourceType = .photoLibrary
        present(picker, animated: true,completion:  nil)
    }
    
    func handler2Action(action:UIAlertAction) {
        picker.sourceType = .camera
        present(picker, animated: true,completion: nil)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        if let image = info[.originalImage] as? UIImage{
            imageView.image = image
        }
        dismiss(animated: true, completion: nil)
    }
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
            dismiss(animated: true, completion: nil)
    }
    
    func getDocumentFolder()->URL {
        let paths = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
        let documentFolder = paths[0]
        print(documentFolder)
        return documentFolder
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        picker.delegate = self
        // Do any additional setup after loading the view, typically from a nib.
    }


}

