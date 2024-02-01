//
//  IconPickerViewController.swift
//  Checklists
//
//  Created by Austin Sparks on 2/1/24.
//

import UIKit

protocol IconPickerViewControllerDelegate: AnyObject {
    func iconPicker(_ picker: IconPickerViewController, didPick iconName: String)
    
}

class IconPickerViewController: UITableViewController {
    weak var delegate: IconPickerViewControllerDelegate?
    let icons = [
     "No Icon", "Appointments", "Birthdays", "Chores",
     "Drinks", "Folder", "Groceries", "Inbox", "Photos", "Trips"
    ]
}
