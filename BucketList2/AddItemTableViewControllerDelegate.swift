//
//  AddItemTableViewControllerDelegate.swift
//  BucketList2
//
//  Created by Edward de la Fuente on 11/7/17.
//  Copyright © 2017 Edward de la Fuente. All rights reserved.
//

import Foundation

protocol AddItemTableViewControllerDelegate: class {
    func itemSaved(by controller: AddItemTableViewController, with text: String, at indexPath: NSIndexPath?)
    
    func cancelButtonPressed(by controller: AddItemTableViewController)

}
