//
//  ViewController.swift
//  Checklists
//
//  Created by Austin Sparks on 1/24/24.
//

import UIKit

class ChecklistViewController: UITableViewController {
    
    var row0checked = false
    var row1checked = false
    var row2checked = false
    var row3checked = false
    var row4checked = false

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    // MARK: - Table View Data Source
    override func tableView(
        _ tableView: UITableView,
        numberOfRowsInSection section: Int
    )   -> Int {
        return 100
    }
    
    override func tableView(
        _ tableView: UITableView,
        cellForRowAt indexPath: IndexPath
    )   -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(
            withIdentifier: "ChecklistItem",
            for: indexPath)
        
        let label = cell.viewWithTag(1000) as! UILabel
         if indexPath.row % 5 == 0 {
         label.text = "Walk the dog"
         } else if indexPath.row % 5 == 1 {
         label.text = "Brush my teeth"
         } else if indexPath.row % 5 == 2 {
         label.text = "Learn iOS development"
         } else if indexPath.row % 5 == 3 {
         label.text = "Soccer practice"
         } else if indexPath.row % 5 == 4 {
         label.text = "Eat ice cream"
         }
        
        return cell
    }
    
    // MARK: - Table View Delegate
    override func tableView(
        _ tableView: UITableView,
        didSelectRowAt indexPath: IndexPath
    )   {
        if let cell = tableView.cellForRow(at: indexPath) {
         var isChecked = false
         if indexPath.row == 0 {
            row0checked.toggle()
            isChecked = row0checked
          } else if indexPath.row == 1 {
            row1checked.toggle()
            isChecked = row1checked
          } else if indexPath.row == 2 {
            row2checked.toggle()
            isChecked = row2checked
          } else if indexPath.row == 3 {
            row3checked.toggle()
            isChecked = row3checked
          } else if indexPath.row == 4 {
            row4checked.toggle()
            isChecked = row4checked
          }
          if isChecked {
            cell.accessoryType = .checkmark
          } else {
            cell.accessoryType = .none
          }
        }
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    func configureCheckmark(
       for cell: UITableViewCell,
       at indexPath: IndexPath
    ) {
       var isChecked = false
        
       if indexPath.row == 0 {
       isChecked = row0checked
       } else if indexPath.row == 1 {
         isChecked = row1checked
       } else if indexPath.row == 2 {
         isChecked = row2checked
       } else if indexPath.row == 3 {
         isChecked = row3checked
       } else if indexPath.row == 4 {
         isChecked = row4checked
       }
        
       if isChecked {
         cell.accessoryType = .checkmark
       } else {
         cell.accessoryType = .none
       }
    }

}

