//
//  ViewController.swift
//  Session4
//
//  Created by Vlad Tagunkov on 26/03/2019.
//  Copyright © 2019 TVI Software. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var colorSegmented: UISegmentedControl!
    
    @IBAction func greenButtonTapped(_ sender: Any) {
       //performSegue(withIdentifier: "greenButton", sender: (Any).self)
       
        
    }
    

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let nextVc = segue.destination as? ModalViewController  {
            //nextVc?.view.backgroundColor =
            if segue.identifier == "normal" {
                switch colorSegmented.selectedSegmentIndex {
                case 0:
                    nextVc.view.backgroundColor = UIColor.red
                case 1:
                    nextVc.view.backgroundColor = UIColor.yellow
                case 2:
                    nextVc.view.backgroundColor = UIColor.blue
                default:
                    break
                }
                } else if segue.identifier == "orangeButton"{
                    nextVc.view.backgroundColor = #colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1)
                    
                }
            } 
            
        }
//        if let greenVc = segue.identifier == "greenButton" && ((segue.destination as? ModalViewController) != nil){
//
//        }
    }
 
    



