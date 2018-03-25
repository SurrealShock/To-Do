//
//  ViewControllerTableViewCell.swift
//  To-Do
//
//  Created by KarsickKeep on 3/24/18.
//  Copyright © 2018 OverLakeside. All rights reserved.
//

import UIKit

class ViewControllerTableViewCell: UITableViewCell {
    
    @IBOutlet weak var goalLabel: UILabel!
    @IBOutlet weak var sectionLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
