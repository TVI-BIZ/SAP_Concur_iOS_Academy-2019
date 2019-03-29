//
//  NavigationBaseViewController.swift
//  Session4
//
//  Created by Vlad Tagunkov on 26/03/2019.
//  Copyright © 2019 TVI Software. All rights reserved.
//

import UIKit

class NavigationBaseViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let nextVc = segue.destination as? NavigationNameViewController {
            nextVc.handler = {
                str in self.nameLabel.text = "Hello \(str)"
            }
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
