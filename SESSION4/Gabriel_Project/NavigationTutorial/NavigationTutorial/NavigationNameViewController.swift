//
//  NavigationNameViewController.swift
//  NavigationTutorial
//
//  Created by i335287 on 26/03/2019.
//  Copyright © 2019 Gabriele Palma. All rights reserved.
//

import UIKit

class NavigationNameViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!

    public var handler: ((String) -> ())?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }


    @IBAction func confirmTapped(_ sender: Any) {
        if let handler = handler {
            handler(nameTextField.text ?? "")
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
