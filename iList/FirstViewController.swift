//
//  FirstViewController.swift
//  iList
//
//  Created by Lee Cohen on 6/25/15.
//  Copyright (c) 2015 Lee. All rights reserved.
//

import UIKit
import CoreData

class FirstViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet var tblTask: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    //UITableViewDelegate 
    func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if (editingStyle == UITableViewCellEditingStyle.Delete)
        {
            taskMgr.tasks.removeAtIndex(indexPath.row)
            tblTask.reloadData();
        }
    }
    
    //Return to view 
    override func viewWillAppear(animated: Bool) {
        tblTask.reloadData();
    }
    //UITableViewDataSource -------------------------------------------------------------------
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    
    // Row display. Implementers should *always* try to reuse cells by setting each cell's reuseIdentifier and querying for available reusable cells with dequeueReusableCellWithIdentifier:
    // Cell gets various attributes set automatically based on table (separators) and data source (accessory views, editing controls)
        
        return taskMgr.tasks.count
        
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
    {
        //let cell : UITableViewCell = UITableViewCell(style: UITableViewCellStyle.Subtitle, reuseIdentifier: "Default")
        //cell.textLabel?.text = taskMgr.tasks[indexPath.row].name
        //cell.detailTextLabel?.text = taskMgr.tasks[indexPath.row].desc
       
        let cell = self.tblTask.dequeueReusableCellWithIdentifier("TaskCell", forIndexPath: indexPath) as!
        TableViewCell
       
      // cell.textLabel?.text = taskMgr.tasks[indexPath.row].name
        //cell.detailTextLabel?.text = taskMgr.tasks[indexPath.row].desc
     //
        
        //cell.CheckBoxBtn.tag = indexPath.row
        //let taskline = taskMgr.tasks[indexPath.section]
      //  let taskRow = taskMgr.tasks[indexPath.row]
        
        cell.ConfigureCellWithTask(taskMgr.tasks[indexPath.row]
)
        
        return cell

    }

}

