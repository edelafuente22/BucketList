//
//  AddItemTableViewController.swift
//  BucketList2
//
//  Created by Edward de la Fuente on 11/7/17.
//  Copyright © 2017 Edward de la Fuente. All rights reserved.
//

import UIKit

class AddItemTableViewController: UITableViewController {
    
    weak var delegate: AddItemTableViewControllerDelegate?
    @objc var item: String?
    @objc var indexPath: NSIndexPath?
    
    @IBOutlet weak var itemTextField: UITextField!
    
    @IBAction func cancelButtonPressed(_ sender: UIBarButtonItem) {
        delegate?.cancelButtonPressed(by: self)
    }

    @IBAction func saveButtonPressed(_ sender: UIBarButtonItem) {
        let text = itemTextField.text!
        delegate?.itemSaved(by: self, with: text, at: indexPath)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        itemTextField.text = item

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

}
