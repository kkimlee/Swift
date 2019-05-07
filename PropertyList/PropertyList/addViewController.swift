//
//  addViewController.swift
//  PropertyList
//
//  Created by MobileX on 01/05/2019.
//  Copyright © 2019 MobileX. All rights reserved.
//

import UIKit

class addViewController: UIViewController {
    
    func getFileName(_ fileName:String) -> String {
        let docsDir = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true)
        let docPath = docsDir[0] as NSString
        let fullName = docPath.appendingPathComponent(fileName)
        print(fullName)
        return fullName
    }
    
    var arrSosi:NSMutableArray?

    @IBOutlet weak var nameText: UITextField!
    @IBAction func actionAdd(_ sender: Any) {
        let newMember = ["name":nameText.text!, "img":"a1.jpg"]
        arrSosi?.add(newMember)
        arrSosi?.write(toFile: getFileName("Sosi.plist"), atomically: true)
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
