//
//  Checklist.swift
//  Checklists
//
//  Created by Austin Sparks on 1/30/24.
//

import UIKit

class Checklist: NSObject {
    var name = ""
    var items = [ChecklistItem]()
    
    init(name: String) {
        self.name = name
        super.init()
    }
}
