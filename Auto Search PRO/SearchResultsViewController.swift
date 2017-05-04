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
    
    var carArray : [Cars] = []
    
    
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
        
        let cell = UITableViewCell()
        let car = carArray[indexPath.row]
        if let myType = car.carType {
            
        }
    }

    
    func fetchByType(carType : String) {
        do{
            // using the cars array, fetch data from database
            carArray = try context.fetch(Cars.fetchRequest())
            
            
        }
        catch{}
    }
    
    func getData(){
        do{
            // fetching from the type selected by the prev View
            let type = selectedCarType
            fetchRequest.predicate = NSPredicate?(format: "carType == @%", type)
            // fetching with the request
            carArray = try context.fetch(Cars.fetchRequest())
            
            
        }
        catch{
            print("Fetch Failed")
        }
    }
    
}
