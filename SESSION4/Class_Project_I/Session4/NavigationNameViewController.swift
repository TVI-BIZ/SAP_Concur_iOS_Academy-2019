//
//  NavigationNameViewController.swift
//  Session4
//
//  Created by Vlad Tagunkov on 26/03/2019.
//  Copyright © 2019 TVI Software. All rights reserved.
//

import UIKit

class NavigationNameViewController: UIViewController {

   
    @IBAction func confirmTapped(_ sender: Any) {
        if let handler = handler{
            handler(nameTextField.text ?? "")
        }
        
    }
    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    public var handler: ((String) ->())?
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
