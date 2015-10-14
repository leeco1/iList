//
//  TaskManager.swift
//  iList
//
//  Created by Lee Cohen on 6/25/15.
//  Copyright (c) 2015 Lee. All rights reserved.
//

import UIKit

var taskMgr: TaskManager = TaskManager()

struct task
    { var name = "un-named"
      var desc = "un-described"
   //   var isChecked = false
    }

class TaskManager: NSObject {
    
    var tasks = [task]()
    
    func addTask (name : String, desc : String)
    {
        tasks.append(task(name: name, desc: desc))
    }
   
}
