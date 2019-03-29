//
//  CatsViewController.swift
//  Tapped_App
//
//  Created by Vlad Tagunkov on 26/03/2019.
//  Copyright © 2019 TVI Software. All rights reserved.
//

import UIKit

class CatsViewController: UIViewController {
    var handler: ((UIImage)->())!
    var handler2: ((String)->())!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var choosePart: UISegmentedControl!
    
    @IBAction func chooseCat(_ sender: UIButton) {
        if let image = sender.imageView?.image{
        handler(image)
        self.navigationController?.popViewController(animated: true)
        }
        
        
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
