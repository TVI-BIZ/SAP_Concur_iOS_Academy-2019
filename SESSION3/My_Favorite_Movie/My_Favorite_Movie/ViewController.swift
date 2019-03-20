//
//  ViewController.swift
//  My_Favorite_Movie
//
//  Created by Vlad Tagunkov on 19/03/2019.
//  Copyright © 2019 TVI Software. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //descriptionTextField.text = "IBM and Coursera are giving away subscriptions worth up to $1 million (U.S.) to help address the lack of skilled data scientists the world is currently facing. Similar to a scholarship, eligibility is independent on social status, location, gender and race. So in the spirit of having some fun – and to ensure highly motivated individuals (with a minimum set of prerequisite skills) are able to benefit most – we’ve created a technical challenge that focuses your learning "
    }
    

    @IBOutlet weak var descriptionTextField: UITextView!
    
    @IBAction func printMyMyMessage(_ sender: UIButton) {
        //print("This is my first IBM Certificate!")
        
        
        //descriptionTextField.textColor = #colorLiteral(red: 0.6470763683, green: 0.009747900069, blue: 0.01463017985, alpha: 1)
        descriptionTextField.text = "Rocky IV is a 1985 American sports drama film written, directed by, and starring Sylvester Stallone.The film co-stars Dolph Lundgren, Burt Young, Talia Shire, Carl Weathers, Tony Burton, Brigitte Nielsen and Michael Pataki. Rocky IV was the highest grossing sports movie for 24 years."
        imageRocy.isHidden = false
        
       
    }
  
    @IBAction func likeMyCertificate(_ sender: UIButton) {
        myEmoji.isHidden = false
        dislikeEmoji.isHidden = true
        descriptionTextField.text = "Robert \"Rocky\" Balboa, Sr. (born July 6th, 1946) is an Italian-American retired heavyweight boxer and former Two-Time Heavyweight Champion. He is famous for his indomitable spirit, extreme tenacity and ferocious body attack. "
        //descriptionTextField.font = UIFont.systemFont(ofSize: 100)
        view.backgroundColor = #colorLiteral(red: 0.006396567915, green: 0, blue: 0.0411587581, alpha: 1)
        descriptionTextField.textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        imageRocy.isHidden = false
    }
    
    @IBOutlet weak var myEmoji: UILabel!
    
    @IBOutlet weak var dislikeEmoji: UILabel!
    @IBOutlet weak var imageRocy: UIImageView!
    
    
    
    @IBAction func dislikeMyEmoji(_ sender: UIButton) {
        myEmoji.isHidden = true
        dislikeEmoji.isHidden = false
        view.backgroundColor = #colorLiteral(red: 0.8796622157, green: 0.01311437227, blue: 0.007107350044, alpha: 1)
        descriptionTextField.text = "Ivan Drago (Russian: Иван Драго, born November 3rd, 1961) is a Russian former professional boxer, Olympian, an Infantry Captain for the Soviet Army, and was the main antagonist in Rocky IV and a secondary antagonist in Creed II."
            descriptionTextField.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
    }
    
}

