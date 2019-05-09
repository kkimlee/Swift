//
//  MainTableViewController.swift
//  API
//
//  Created by MobileX on 07/05/2019.
//  Copyright © 2019 MobileX. All rights reserved.
//

import UIKit
import WebKit

class MainTableViewController: UITableViewController, UISearchBarDelegate {
    
    let apiKey = "e1122fb50e5c439117119faccb488d35"
    var books:[[String:Any]]?
    var page = 1
    var query = ""
    @IBOutlet weak var searchBar: UISearchBar!
    
    func search(query:String, page:Int, size:Int) {
        let strURL = "https://dapi.kakao.com/v3/search/book?query=\(query)&page=\(page)&size=\(size)" as NSString
        let strURL1 = strURL.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed)
        if let url = URL(string: strURL1!) {
            var request = URLRequest(url: url)
            request.httpMethod = "GET"
            request.addValue("KakaoAK \(apiKey)", forHTTPHeaderField: "Authorization" )
            let session = URLSession.shared
            let task = session.dataTask(with: request, completionHandler: completionHandler)
            task.resume()
        }
    }
    
    func completionHandler(data: Data?, responese:URLResponse?, error:Error?)->Void{
        if let data = data {
            do {
                if let json = try JSONSerialization.jsonObject(with: data, options: []) as? [String:Any] {
                    books = json["documents"] as? [[String:Any]]
                    DispatchQueue.main.async {
                        self.tableView.reloadData()
                    }
                }
            } catch {
            }
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.rowHeight = 100
        searchBar.delegate = self
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    
    @IBAction func actPrev(_ sender: Any) {
        page -= 1
        search(query: query, page:page, size:20)
        
    }
    @IBAction func actNext(_ sender: Any) {
        page += 1
        search(query: query, page:page, size:20)
    }
    
    
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        page = 1
        if let q = searchBar.text {
            query = q
            search(query: query, page:1, size:20)
            }
        searchBar.resignFirstResponder()
    }
    
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if let books = books {
            return books.count
        } else {
            return 0
        }
        
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        let thumbnailView = cell.viewWithTag(5) as? UIImageView
        let titleLb = cell.viewWithTag(1) as? UILabel
        let authorsLb = cell.viewWithTag(2) as? UILabel
        let publisherLb = cell.viewWithTag(3) as? UILabel
        let priceLb = cell.viewWithTag(4) as? UILabel

        if let book = books {
            let book = books![indexPath.row]
            let authors = book["authors"] as? [String]
            let price = book["price"] as? Int
            let thumbnail = book["thumbnail"] as? String
            
            if let url = URL(string: thumbnail!) {
                do {
                    let data = try Data(contentsOf: url)
                    thumbnailView?.image = UIImage(data: data)
                } catch {
                        
                }
            }
            
            
            titleLb?.text = book["title"] as? String
            authorsLb?.text = authors?.joined(separator: ",")
            publisherLb?.text = book["publisher"] as? String
            priceLb?.text = "\(price!)"
        }
        // Configure the cell...
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
        if let indexPath = tableView.indexPathForSelectedRow {
            if let books = books {
                let book = books[indexPath.row]
                let strURL = book["url"] as? String
                
                if let target = segue.destination as? ViewController {
                    target.strURL = strURL
                }
            }
            
        }
    }
}
