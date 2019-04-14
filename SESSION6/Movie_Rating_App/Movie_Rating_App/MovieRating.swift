//
//  MovieRating.swift
//  Movie_Rating_App
//
//  Created by Vlad Tagunkov on 12/04/2019.
//  Copyright © 2019 TVI Software. All rights reserved.
//

import Foundation
struct MovieRating: Codable {
    var name = ""
    var visitedAt = Date()
    var rating = 2
    var comment = ""
    var movieSite = ""
}
