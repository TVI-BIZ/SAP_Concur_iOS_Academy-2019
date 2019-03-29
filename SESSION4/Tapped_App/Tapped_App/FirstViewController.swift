//
//  FirstViewController.swift
//  Tapped_App
//
//  Created by Vlad Tagunkov on 26/03/2019.
//  Copyright © 2019 TVI Software. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
   
    @IBOutlet weak var imageViewGreen: UIImageView!
    
    @IBOutlet weak var textField: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let catsController = segue.destination as? CatsViewController{
            
            catsController.handler = {
                image in self.imageViewGreen.image = image
            }
            catsController.handler2 = {
                str in self.textField.text = str
            }
        }
    }

}

