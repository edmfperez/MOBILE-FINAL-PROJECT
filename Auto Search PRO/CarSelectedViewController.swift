//
//  CarSelectedViewController.swift
//  Auto Search PRO
//
//  Created by Eduardo L. Perez on 5/4/17.
//  Copyright © 2017 eperez6. All rights reserved.
//

import UIKit

class CarSelectedViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // outlets
    
    @IBOutlet weak var img_Car: UIImageView!

    @IBOutlet weak var lbl_Make: UILabel!
    
    @IBOutlet weak var lbl_Price: UILabel!
    
    @IBOutlet weak var lbl_Model: UILabel!
    
    @IBOutlet weak var txtView_Description: UITextView!
    
    @IBOutlet weak var btn_AddToCart: UIButton!
    
}
