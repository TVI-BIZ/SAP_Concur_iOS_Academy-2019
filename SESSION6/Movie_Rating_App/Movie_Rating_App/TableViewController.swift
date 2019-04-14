//
//  TableViewController.swift
//  Movie_Rating_App
//
//  Created by Vlad Tagunkov on 09/04/2019.
//  Copyright © 2019 TVI Software. All rights reserved.
//

import UIKit
struct MovieRating2: Codable {
    var name = ""
    var visitedAt = Date()
    var rating = 2
    var comment = ""
}


class TableViewController: UITableViewController {
    var movieArray:[MovieRating] = []
    static var movieArray2:[MovieRating2] = []
    var customcell = Customcell()
    //var testData: Date = 2/12/15
    let date = Date()
    let fileURL = try! FileManager.default.url(for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create: false)
    
        //try! FileManager.default.url(for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create: true)
    
//    movieArray2 = [
//    MovieRating2(name: "First", visitedAt: date, rating: 4, comment: "Hi!")
//    ]
    
    
    
//    dateFormatter. = Locale(identifier: "en_US_POSIX")
//    dateFormatter.timeZone = TimeZone.autoupdatingCurrent
//    dateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss.SSSZ"
    
    
    
    @IBOutlet weak var cellLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let fileManeger = FileManager.default
        let directory = fileManeger.urls(for: .applicationSupportDirectory, in: .userDomainMask).first!
        try? fileManeger.createDirectory(at: directory, withIntermediateDirectories: true, attributes: nil)
        let filename = directory.appendingPathComponent("myMovieFile.dat")
        let decoder = JSONDecoder()
        if let data = try? Data(contentsOf: filename){
            let item = try? decoder.decode([MovieRating2].self, from: data)
            TableViewController.movieArray2 = (item ?? nil)!
            
            print("Item Data is :", item)
        }
        
        
        
        
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return TableViewController.movieArray2.count
        
    }

    override func viewDidAppear(_ animated: Bool) {
  
        super.viewWillAppear(true)
        tableView.reloadData()
  
    }
    
    
   
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "RatingsCell", for: indexPath) as! Customcell
        cell.customCellLable.text = TableViewController.movieArray2[indexPath.row].name
        cell.ratingScore.text = "Rating " + String((TableViewController.movieArray2[indexPath.row].rating))
        
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

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
