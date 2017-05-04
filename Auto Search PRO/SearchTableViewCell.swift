//
//  SearchTableViewCell.swift
//  Auto Search PRO
//
//  Created by Eduardo L. Perez on 5/3/17.
//  Copyright © 2017 eperez6. All rights reserved.
//

import UIKit

class SearchTableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    @IBOutlet weak var img_Car: UIImageView!

    @IBOutlet weak var lbl_Year: UILabel!
    
    @IBOutlet weak var lbl_Make: UILabel!
    
    @IBOutlet weak var lbl_Model: UILabel!
    
    @IBOutlet weak var lbl_Mileage: UILabel!

    @IBOutlet weak var lbl_Price: UILabel!
    
}
