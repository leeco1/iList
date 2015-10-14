//
//  SecondViewController.swift
//  iList
//
//  Created by Lee Cohen on 6/25/15.
//  Copyright (c) 2015 Lee. All rights reserved.
//

import UIKit
import CoreData


class SecondViewController: UIViewController, UITextFieldDelegate {

    //to update our task array we will add this variables:
    
     //self.view.backgroundColor = UIColor(patternImage: UIImage(named: "background.png"))
 //  var BackImage: UIImageView!
    
    @IBOutlet var txtTask:UITextField!
    
    @IBOutlet var txtDesc:UITextField!
    
 
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //Events
    @IBAction func btnAddTask_Click(Sender:UIButton){
      //  println("the button was clicked")
    
        taskMgr.addTask(txtTask.text, desc: txtDesc.text );
        self.view.endEditing(true)
        txtTask.text = ""
        txtDesc.text = ""
        
        //at the end of adding we will want to go back to the list tab:
        self.tabBarController?.selectedIndex = 0;
        
        
    }
    
    
    //Ios Tauch Functions
    
    //To remove keybord on toucclick
    
    override func touchesBegan(touches: Set<NSObject>, withEvent event: UIEvent) {
        self.view.endEditing(true)
    }

    //UITextFieldDelegate
    func textFieldShouldReturn(textField: UITextField) -> Bool
    {
        textField.resignFirstResponder()
        return true
    }
}

