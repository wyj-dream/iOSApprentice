//
//  ViewController.swift
//  Checklists
//
//  Created by Administrator on 2017/8/10.
//  Copyright © 2017年 emptywalker. All rights reserved.
//

import UIKit

class ChecklistViewController: UITableViewController {
    
    var row0item: ChecklistItem
    var row1item: ChecklistItem
    var row2item: ChecklistItem
    var row3item: ChecklistItem
    var row4item: ChecklistItem
    
    required init?(coder aDecoder: NSCoder) {
        row0item = ChecklistItem()
        row0item.text = "Walk the dog"
        row0item.checked = false
        row1item = ChecklistItem()
        row1item.text = "Brush my teeth"
        row1item.checked = true
        row2item = ChecklistItem()
        row2item.text = "Learn iOS development"
        row2item.checked = true
        row3item = ChecklistItem()
        row3item.text = "Soccer practice"
        row3item.checked = false
        row4item = ChecklistItem()
        row4item.text = "Eat ice cream"
        row4item.checked = true
        super.init(coder: aDecoder)
    }
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ChecklistItem", for: indexPath)
        let label = cell.viewWithTag(1000) as! UILabel
        if indexPath.row == 0 {
            label.text = row0item.text
        } else if indexPath.row == 1 {
            label.text = row1item.text
        } else if indexPath.row == 2 {
            label.text = row2item.text
        } else if indexPath.row == 3 {
            label.text = row3item.text
        } else if indexPath.row == 4 {
            label.text = row4item.text
        }
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let cell = tableView.cellForRow(at: indexPath)
        
        if indexPath.row == 0 {
            row0item.checked = !row0item.checked
        } else if indexPath.row == 1 {
            row1item.checked = !row1item.checked
        } else if indexPath.row == 2 {
            row2item.checked = !row2item.checked
        } else if indexPath.row == 3 {
            row3item.checked = !row3item.checked
        } else if indexPath.row == 4 {
            row4item.checked = !row4item.checked
        }
        
        if cell?.accessoryType == .none {
            cell?.accessoryType = .checkmark
        } else {
            cell?.accessoryType = .none
        }
        
        
        tableView.deselectRow(at: indexPath, animated: true)
    }


}

