//
//  ViewController.swift
//  table_view_dynamic
//
//  Created by Vlad Tagunkov on 02/04/2019.
//  Copyright © 2019 TVI Software. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    
    var data: [String] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        data = ["1","2","3","45ttt"]
    }
    
    func handleResponce(){
        data = ["one moreee!"]
        tableView.reloadData()
    }
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        let item = data[indexPath.row]
        cell.textLabel?.text = "Hello from \(indexPath.row) cell! " + "new data - " + item
        cell.textLabel?.textColor = #colorLiteral(red: 0.1764705926, green: 0.01176470611, blue: 0.5607843399, alpha: 1)
        
        return cell
    }
}

