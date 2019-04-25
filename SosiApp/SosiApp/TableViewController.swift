//
//  TableViewController.swift
//  SosiApp
//
//  Created by MobileX on 25/04/2019.
//  Copyright © 2019 MobileX. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    var arrSosi = [["name":"효연", "img":"a1.jpg"], ["name":"제시카", "img":"a2.jpg"], ["name":"서현", "img":"a3.jpg"], ["name":"수영", "img":"a4.jpg"], ["name":"써니", "img":"a5.jpg"], ["name":"태연", "img":"a6.jpg"], ["name":"티파니", "img":"a7.jpg"], ["name":"윤아", "img":"a8.jpg"], ["name":"유리", "img":"a9.jpg"]]

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.rowHeight = 100
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return arrSosi.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        let cell = tableView.dequeueReusableCell(withIdentifier: "sosicell", for: indexPath)
        let dic = arrSosi[indexPath.row]
        let imageView = cell.viewWithTag(1) as? UIImageView
        imageView?.image = UIImage(named: dic["img"]!)
        let label1 = cell.viewWithTag(2) as? UILabel
        label1?.text = dic["name"]
        let label2 = cell.viewWithTag(3) as? UILabel
        label2?.text = "소녀시대"
        let label3 = cell.viewWithTag(4) as? UILabel
        label3?.text = "\(indexPath.row+1)번째 멤버"
        
        return cell
        
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "showDetail") {
            let tempIndexPath = tableView.indexPathForSelectedRow
            let tempViewController = segue.destination as? ViewController
            if let viewController = tempViewController, let indexPath = tempIndexPath {
                viewController.member = arrSosi[indexPath.row]
            }
        }
    }
}
