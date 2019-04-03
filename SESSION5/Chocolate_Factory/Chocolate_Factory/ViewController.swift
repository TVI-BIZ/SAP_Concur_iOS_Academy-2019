//
//  ViewController.swift
//  Chocolate_Factory
//
//  Created by Vlad Tagunkov on 02/04/2019.
//  Copyright © 2019 TVI Software. All rights reserved.
//

import UIKit
import Foundation

class ViewController: UITableViewController {
    
    var factory_label_value: Double = 0
    @IBOutlet weak var headerCounter: UIBarButtonItem!
    
    @IBAction func clearPressed(_ sender: Any) {
        factory_label_value = 0
        headerCounter.title = "0"
    }
    
    
    var chocolate_collection: [Chocolate] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
       chocolate_collection = [Cadbury,
                              Ferrero_Rocher,Lindt,Nestle,Ritter_Sport,
                              Droste,Guvlian,Mars_bars,Snickers,
                              KitKat]
    }
    struct Chocolate {
        var name: String
        var flag: Character
        var price: Double
    }
    var Cadbury: Chocolate = Chocolate(name: "Cadbury", flag: "🇬🇧", price: 20.0)
    var Ferrero_Rocher: Chocolate = Chocolate(name: "Ferrero Rocher", flag: "🇧🇬", price: 100.0)
    var Lindt: Chocolate = Chocolate(name: "Lindt", flag: "🇪🇺", price: 50.0)
    var Nestle: Chocolate = Chocolate(name: "Nestle", flag: "🇮🇪", price: 40.0)
    var Ritter_Sport: Chocolate = Chocolate(name: "Ritter Sport", flag: "🇬🇳", price: 200.0)
    var Droste: Chocolate = Chocolate(name: "Droste", flag: "🇨🇴", price: 200.0)
    var Guvlian: Chocolate = Chocolate(name: "Guvlian", flag: "🇩🇰", price: 40.0)
    var Mars_bars: Chocolate = Chocolate(name: "Mars bars", flag: "🇨🇲", price: 70.0)
    var Snickers: Chocolate = Chocolate(name: "Snickers", flag: "🇨🇿", price: 70.0)
    var KitKat: Chocolate = Chocolate(name: "KitKat", flag: "🇧🇷", price: 30.0)
    

   
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "chocolate",for: indexPath) as! ChocolateCellLabel
        let item = chocolate_collection[indexPath.row]
        cell.textLabel?.text = item.name + "  " + String(item.flag)
        //cell.textLabel?.textAlignment = NSTextAlignment.left
        cell.chokoPrice.text = String(item.price)
    
        
        return cell
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return chocolate_collection.count
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let indexPath = tableView.indexPathForSelectedRow
        let currentCell = (tableView.cellForRow(at: indexPath!)) as! ChocolateCellLabel
        

        // New version with if let constructiuon
        if let str_dig = currentCell.chokoPrice.text {
            if let dig_dig: Double = Double(str_dig) {
                factory_label_value += dig_dig
                headerCounter.title = String((factory_label_value*100).rounded()/100)
            }
        }
        
        // Old variant with many ! forced unwrapping
//        let str_dig: String = currentCell.chokoPrice.text!
//        let dig_dig: Double = Double(str_dig)!
//        factory_label_value += dig_dig
//        let roundedD = (factory_label_value*100).rounded()/100
//        headerCounter.title = String(roundedD)
       

    }
}

