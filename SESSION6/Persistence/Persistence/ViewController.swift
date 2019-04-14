//
//  ViewController.swift
//  Persistence
//
//  Created by i335287 on 09/04/2019.
//  Copyright © 2019 Gabriele Palma. All rights reserved.
//

import UIKit

struct NoteData: Codable {
    var title: String
    var switchValue: Bool
    var sliderValue: Float
    var contentText: String
}

class ViewController: UIViewController {

    @IBOutlet weak var titleField: UITextField!
    @IBOutlet weak var switchField: UISwitch!
    @IBOutlet weak var sliderField: UISlider!

    @IBOutlet weak var contentText: UITextView!

    @IBAction func saveAction(_ sender: Any) {
        saveAllDataToFile()
    }

    override func viewWillAppear(_ animated: Bool) {
        fetchAllDataFromFile()
    }


    func saveAllDataToFile() {
        let noteData = NoteData(title: titleField.text ?? "", switchValue: switchField.isOn, sliderValue: sliderField.value, contentText: contentText.text)

        let filename = getFileUrl(filename: "myNote.dat")
        let encoder = JSONEncoder()
        let data = try? encoder.encode(noteData)

        try? data?.write(to: filename)
    }

    func fetchAllDataFromFile() {
        let filename = getFileUrl(filename: "myNote.dat")
        let decoder = JSONDecoder()
        if let data = try? Data(contentsOf: filename) {
            let item = try? decoder.decode(NoteData.self, from: data)
            titleField.text = item?.title
            contentText.text = item?.contentText
            switchField.isOn = item?.switchValue ?? false
            sliderField.value = item?.sliderValue ?? 0.5
        }
    }

    func getFileUrl(filename: String) -> URL {
        let fileManager = FileManager.default
        let directory = fileManager.urls(for: .applicationSupportDirectory, in: .userDomainMask).first!
        try? fileManager.createDirectory(at: directory, withIntermediateDirectories: true, attributes: nil)
        let filename = directory.appendingPathComponent(filename)
        return filename
    }

    func saveContentToFile() {
        let filename = getFileUrl(filename: "myFile.dat")
        try? contentText.text.write(to: filename, atomically: true, encoding: .utf8)
    }

    func fetchContentFromFile() {
        let filename = getFileUrl(filename: "myFile.dat")
        let content = try? String(contentsOf: filename, encoding: .utf8)
        contentText.text = content
    }


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    func saveToUserDefaults() {
        let userDefaults = UserDefaults.standard
        userDefaults.set(titleField.text, forKey: "title")
        userDefaults.set(switchField.isOn, forKey: "switch")
        userDefaults.set(sliderField.value, forKey: "slider")
        userDefaults.synchronize()
    }

    func fetchFromUserDefaults() {
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
}

