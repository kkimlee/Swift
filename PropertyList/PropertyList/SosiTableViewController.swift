//
//  SosiTableViewController.swift
//  PropertyList
//
//  Created by MobileX on 30/04/2019.
//  Copyright © 2019 MobileX. All rights reserved.
//

import UIKit

class SosiTableViewController: UITableViewController {
    var arrSosi:NSMutableArray?
    
    func getFileName(_ fileName:String) -> String {
        let docsDir = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true)
        let docPath = docsDir[0] as NSString
        let fullName = docPath.appendingPathComponent(fileName)
        print(fullName)
        return fullName
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let targetPath = getFileName("Sosi.plist")
        print(targetPath)
        let fileManager = FileManager.default
        if !fileManager.fileExists(atPath: targetPath) {
            let orgPath = Bundle.main.path(forResource: "Sosi", ofType: "plist")
            do {
                try fileManager.copyItem(atPath: orgPath!, toPath: targetPath)
            } catch {
                print("복사오류")
            }
        }
        arrSosi = NSMutableArray(contentsOfFile: targetPath)
        self.navigationItem.rightBarButtonItem = self.editButtonItem
        tableView.rowHeight = 100
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        tableView.reloadData()
    }
    
    /*
    var arrSosi:NSArray?
    override func viewDidLoad() {
        super.viewDidLoad()
        if  let path = Bundle.main.path(forResource: "Sosi", ofType: "plist") {
            arrSosi = NSArray(contentsOfFile: path)
        }
        tableView.rowHeight = 100
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    */
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if let array = arrSosi {
            return array.count
        } else {
            return 0
        }
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)

        if let array = arrSosi {
            if let member = array[indexPath.row] as? [String:String] {
                let fileName = member["img"]
                let imageview = cell.viewWithTag(1) as? UIImageView
                imageview?.image = UIImage(named: fileName!)
                let name = member["name"]
                let nameLabel = cell.viewWithTag(2) as? UILabel
                nameLabel?.text = name
                let desc = member["desc"]
                let descLabel = cell.viewWithTag(3) as? UILabel
                descLabel?.text = desc
            }
        }

        return cell
    }
    

    
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    

    
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            arrSosi?.removeObject(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
            arrSosi?.write(toFile: getFileName("Sosi.plist"), atomically: true)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    

    
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {
        if let array = arrSosi {
            let temp = array[fromIndexPath.row] as? [String:String]
            array.removeObject(at: fromIndexPath.row)
            array.insert(temp, at: to.row)
            array.write(toFile: getFileName("Sosi.plist"), atomically: true)
        }

    }
    

    
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        if let target = segue.destination as? addViewController {
            target.arrSosi = arrSosi
        }
    }
    

}
