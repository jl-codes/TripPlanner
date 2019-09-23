//
//  TableViewCell.swift
//  TripPlannerApp
//
//  Created by Johnny Loehr on 9/23/19.
//  Copyright © 2019 Johnny Loehr. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var location: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
