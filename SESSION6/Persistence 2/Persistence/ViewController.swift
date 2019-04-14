//
//  ViewController.swift
//  Persistence
//
//  Created by i335287 on 09/04/2019.
//  Copyright © 2019 Gabriele Palma. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var titleField: UITextField!
    @IBOutlet weak var switchField: UISwitch!
    @IBOutlet weak var sliderField: UISlider!

    @IBOutlet weak var contentText: UITextView!

    @IBAction func saveAction(_ sender: Any) {
        let userDefaults = UserDefaults.standard
        userDefaults.set(titleField.text, forKey: "title")
        userDefaults.set(switchField.isOn, forKey: "switch")
        userDefaults.set(sliderField.value, forKey: "slider")
        userDefaults.synchronize()
    }

    override func viewWillAppear(_ animated: Bool) {
        let userDefaults = UserDefaults.standard
        let title = userDefaults.value(forKey: "title") // get the value we assigned for the key "title"
            as? String // convert it to a String
            ?? "" // use empty string if nothing is there
        titleField.text = title

        let switchValue = userDefaults.value(forKey: "switch") // get the value we assigned for the key "title"
            as? Bool // convert it to a String
            ?? false // use empty string if nothing is there
        switchField.isOn = switchValue

        let sliderValue = userDefaults.value(forKey: "slider") // get the value we assigned for the key "title"
            as? Float // convert it to a String
            ?? 0.5 // use empty string if nothing is there
        sliderField.value = sliderValue
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

