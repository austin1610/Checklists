//
//  AddItemTableViewController.swift
//  Checklists
//
//  Created by Austin Sparks on 1/26/24.
//

import UIKit

class AddItemTableViewController: UITableViewController {
    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.largeTitleDisplayMode = .never
    }
    
    // MARK: - Actions
    @IBAction func cancel() {
     navigationController?.popViewController(animated: true)
    }
    
    @IBAction func done() {
     navigationController?.popViewController(animated: true)
    }
    
    // MARK: - Table View Delegates
    override func tableView(
      _ tableView: UITableView,
      willSelectRowAt indexPath: IndexPath
    ) -> IndexPath? {
      return nil
    }
}
