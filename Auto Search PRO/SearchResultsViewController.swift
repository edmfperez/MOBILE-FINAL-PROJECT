//
//  SearchResultsViewController.swift
//  Auto Search PRO
//
//  Created by Eduardo L. Perez on 5/2/17.
//  Copyright © 2017 eperez6. All rights reserved.
//

import UIKit


// VARS
var yearArray = ["2003","2014","2009","2009"]
var makeArray = ["BMW","Ford","Dodge","Chevrolet"]
var modelArray = ["330Ci","Escape","Grand Caravan","Silverado 1500"]
var mileageArray = ["145,000","72,000","98,000","130,459"]
var priceArray = ["$4,900","$17,999","$9,999","$12,399"]
var imageArray = ["bmw.jpg","ford.jpg","dodge.jpg","chevy.jpg"]




var carSelectedArray = [String]()

var selectedIndex = Int()

class SearchResultsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    
        // outlet connection
    @IBOutlet weak var car_Table: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // segue controls
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        selectedIndex = indexPath.row
        performSegue(withIdentifier: "detailSegue", sender: self)
        
    }
    
    /*
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // creates view controller obj
        
        let secondVC : CarSelectedViewController = segue.destination as! CarSelectedViewController

        secondVC.lbl_Model.text? = modelArray[selectedIndex]
        secondVC.lbl_Make.text? = makeArray[selectedIndex]
        secondVC.lbl_Price.text? = priceArray[selectedIndex]
        
    }
    */
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return yearArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        //
        let cell : SearchTableViewCell = self.car_Table.dequeueReusableCell(withIdentifier: "carCell")! as! SearchTableViewCell
        //
        
        
        cell.lbl_Year.text = yearArray[indexPath.row]
        cell.lbl_Make.text = makeArray[indexPath.row]
        cell.lbl_Model.text = modelArray[indexPath.row]
        cell.lbl_Mileage.text = mileageArray[indexPath.row]
        cell.lbl_Price.text = priceArray[indexPath.row]
        

        cell.img_Car.image = UIImage(named:imageArray[indexPath.row])
        
        return cell
    }
    
}
