//
//  Customcell.swift
//  Movie_Rating_App
//
//  Created by Vlad Tagunkov on 13/04/2019.
//  Copyright © 2019 TVI Software. All rights reserved.
//

import UIKit

class Customcell: UITableViewCell {

    @IBOutlet weak var ratingScore: UILabel!
    @IBOutlet weak var customCellLable: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code

        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        
    }

}
