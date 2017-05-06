//
//  CarSelectedViewController.swift
//  Auto Search PRO
//
//  Created by Eduardo L. Perez on 5/4/17.
//  Copyright © 2017 eperez6. All rights reserved.
//

import UIKit

class CarSelectedViewController: UIViewController {

    
    var price = String()
    var make = String()
    var model = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        lbl_Price.text! = priceArray[selectedIndex]
        lbl_Make.text! = makeArray[selectedIndex]
        lbl_Model.text! = modelArray[selectedIndex]
        
        img_Car.image = UIImage(named:imageArray[selectedIndex])
        
        
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
    
    
    @IBAction func btn_AddToCart(_ sender: Any) {
        
    }
    
}
