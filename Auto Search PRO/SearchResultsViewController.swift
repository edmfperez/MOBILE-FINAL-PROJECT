//
//  SearchResultsViewController.swift
//  Auto Search PRO
//
//  Created by Eduardo L. Perez on 5/2/17.
//  Copyright © 2017 eperez6. All rights reserved.
//

import UIKit

class SearchResultsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    
    // VARS
    var selectedType = selectedCarType
    
    var typePredicate : NSPredicate?
    
    var carArray = [Cars]()
    
    // outlet connection
    @IBOutlet weak var car_Table: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return carArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "carCell", for: indexPath) as! SearchTableViewCell
        
        cell.lbl_Year.text = carArray[indexPath.row].carYear
        cell.lbl_Make.text = carArray[indexPath.row].carMake
        cell.lbl_Model.text = carArray[indexPath.row].carModel
        cell.lbl_Mileage.text = carArray[indexPath.row].carMileage
        cell.lbl_Price.text = carArray[indexPath.row].carPrice
        
       // var imageName = UIImage(named: carArray[indexPath.row])
        //cell.img_Car?.image = imageName
        
        return cell
    }
    
    
    func fetchByType(carType : String) {
        do{
            // using the cars array, fetch data from database
            carArray = try context.fetch(Cars.fetchRequest())
            
            
        }
        catch{}
    }
 
    
}
