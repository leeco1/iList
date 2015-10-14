//
//  TableViewCell.swift
//  iList
//
//  Created by Lee Cohen on 7/15/15.
//  Copyright (c) 2015 Lee. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    @IBOutlet var CheckBoxBtn: CheckBox!

    @IBOutlet var NameLable: UILabel!
    
    @IBOutlet var DescLable: UILabel!
    
    
    func ConfigureCellWithTask(Task: task){
    NameLable.text = Task.name
    DescLable.text = Task.desc
    //CheckBoxBtn.isChecked = Task.isChecked ????
        
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
