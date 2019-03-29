//
//  NavigationBaseViewController.swift
//  NavigationTutorial
//
//  Created by i335287 on 26/03/2019.
//  Copyright © 2019 Gabriele Palma. All rights reserved.
//

import UIKit

class NavigationBaseViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func selectTapped(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        if let vc = storyboard.instantiateViewController(withIdentifier: "nameViewController") as? NavigationNameViewController {
            vc.handler = { str in
                self.nameLabel?.text = "Hello \(str)"
                self.navigationController?.popViewController(animated: true)
            }
            self.navigationController?.pushViewController(vc, animated: true)
        }
    }


//    // MARK: - Navigation
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        if let nextVc = segue.destination as? NavigationNameViewController {
//            nextVc.handler = { str in
//                self.nameLabel?.text = "Hello \(str)"
//                self.navigationController?.popViewController(animated: true)
//            }
//        }
//    }


}
