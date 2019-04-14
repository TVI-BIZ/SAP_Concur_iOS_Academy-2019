//
//  RatingViewController.swift
//  Movie_Rating_App
//
//  Created by Vlad Tagunkov on 09/04/2019.
//  Copyright © 2019 TVI Software. All rights reserved.
//

import UIKit

class RatingViewController: UIViewController {
    //var visitDate:Date
    var movie = MovieRating()
    var movie2 = MovieRating2()
    static var movieList:[MovieRating] = []
    var visitedDate =  Date ()
    var movieRating: Int = 0

  
    @IBOutlet weak var URLtext: UITextField!
    @IBOutlet weak var datePicker: UIDatePicker!
    
    @IBOutlet weak var movieName: UITextField!
    
    @IBOutlet weak var checker: UISegmentedControl!
    
    @IBAction func ratingChecker(_ sender: Any) {
        switch checker.selectedSegmentIndex {
                        case 0:
                            movieRating = 1
                        case 1:
                            movieRating = 2
                        case 2:
                            movieRating = 3
                        case 3:
                            movieRating = 4
                        default:
                        break
        }
    }
    @IBOutlet weak var sommentText: UITextView!
    
    @IBAction func datePickerChange(_ sender: UIDatePicker) {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MMM dd, YYYY"
        let someDataString = dateFormatter.string(from: sender.date)
        let dateFromPicker = dateFormatter.date(from: someDataString)
        visitedDate = dateFromPicker!
        print(someDataString)
        
    }
    
    
    
    @IBAction func saveButton(_ sender: Any) {
        let movieData = MovieRating2(name: movieName.text ?? "", visitedAt: visitedDate, rating: movieRating, comment: sommentText.text ?? "")
        TableViewController.movieArray2.append(movieData)
        let movieDataList = TableViewController.movieArray2
        let fileManeger = FileManager.default
        let directory = fileManeger.urls(for: .applicationSupportDirectory, in: .userDomainMask).first!
        try? fileManeger.createDirectory(at: directory, withIntermediateDirectories: true, attributes: nil)
        let filename = directory.appendingPathComponent("myMovieFile.dat")
        let encoder = JSONEncoder()
        let data = try? encoder.encode(movieDataList)
        
        try? data?.write(to: filename)
        
        print(TableViewController.movieArray2)

        navigationController?.popViewController(animated: true)
        dismiss(animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
