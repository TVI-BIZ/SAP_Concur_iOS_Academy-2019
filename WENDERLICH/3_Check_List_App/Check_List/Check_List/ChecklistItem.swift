//
//  ChecklistItem.swift
//  Check_List
//
//  Created by Vlad Tagunkov on 02/04/2019.
//  Copyright © 2019 TVI Software. All rights reserved.
//

import Foundation
class ChecklistItem: NSObject {
    @objc var text = ""
    var checked = false
    
    func toggleChecked(){
        checked = !checked
    }
}
