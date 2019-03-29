//
//  ViewController.swift
//  NavigationTutorial
//
//  Created by i335287 on 26/03/2019.
//  Copyright © 2019 Gabriele Palma. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var colorSegmented: UISegmentedControl!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let nextVc = segue.destination as? ModalSecondViewController {
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
        }
    }


}

