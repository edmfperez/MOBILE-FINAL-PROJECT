//
//  CheckoutViewController.swift
//  Auto Search PRO
//
//  Created by Eduardo L. Perez on 5/2/17.
//  Copyright © 2017 eperez6. All rights reserved.
//

import UIKit

// class variables filled from Core Data 

    // fill these vars with info from the array



class CheckoutViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()

        lbl_cartYear.text = yearArray[selectedIndex]
        lbl_cartMake.text = makeArray[selectedIndex]
        lbl_cartModel.text = modelArray[selectedIndex]
        lbl_cartPrice.text = priceArray[selectedIndex]
        
        
                
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func btn_PurchaseCar(_ sender: Any) {
        let alertController = UIAlertController(title: "Purchase Confirmation", message: "Your car has been purchased. You will receive an email from the owner to finalize shipping details. Press OK to quit.", preferredStyle: .alert)
        let OKAction = UIAlertAction(title: "OK", style: .default, handler: {ACTION in self.performSegue(withIdentifier: "returnToHome", sender: self)})
        alertController.addAction(OKAction)
        self.present(alertController, animated: true, completion: nil)
    }

    // showing off all the details for the car in cart
    
    @IBOutlet weak var lbl_cartYear: UILabel!
    
    @IBOutlet weak var lbl_cartMake: UILabel!

    @IBOutlet weak var lbl_cartModel: UILabel!
    
    @IBOutlet weak var lbl_cartPrice: UILabel!
    
    @IBOutlet weak var lbl_cartDescription: UITextView!
    
}
