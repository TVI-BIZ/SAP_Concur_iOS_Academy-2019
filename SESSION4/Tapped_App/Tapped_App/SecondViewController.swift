//
//  SecondViewController.swift
//  Tapped_App
//
//  Created by Vlad Tagunkov on 26/03/2019.
//  Copyright © 2019 TVI Software. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //segue.identifier == "value"
        let viewController = segue.destination
        let redComponent: CGFloat = red.isOn ? 1.0 : 0.0
        let greenComponent: CGFloat = green.isOn ? 1.0: 0.0
        let bluComponent:CGFloat = blue.isOn ? 1.0: 0.0
        
        let color = UIColor(red: redComponent, green: greenComponent, blue: bluComponent, alpha: 1.0)
        viewController.view.backgroundColor = color
        if segue.identifier == "button"{
        // your custom color
//            viewController.view.backgroundColor = #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1)
            
        //gradient
            let gradient: CAGradientLayer = CAGradientLayer()
            
            gradient.colors = [UIColor.blue.cgColor, UIColor.red.cgColor]
            gradient.locations = [0.0 , 1.0]
            gradient.startPoint = CGPoint(x: 0.0, y: 1.0)
            gradient.endPoint = CGPoint(x: 1.0, y: 1.0)
            gradient.frame = CGRect(x: 0.0, y: 0.0, width: self.view.frame.size.width, height: self.view.frame.size.height)
            
            viewController.view.layer.insertSublayer(gradient, at: 0)
            
        }
        
    }

    @IBAction func buttonChanger(_ sender: Any) {
    }
    @IBOutlet weak var blue: UISwitch!
    @IBOutlet weak var green: UISwitch!
    @IBOutlet weak var red: UISwitch!
}

