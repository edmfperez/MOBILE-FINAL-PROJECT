//
//  SearchTabViewController.swift
//  Auto Search PRO
//
//  Created by Eduardo L. Perez on 5/2/17.
//  Copyright © 2017 eperez6. All rights reserved.
//

import UIKit

var selectedCarType : String = ""

class SearchTabViewController: UIViewController,  UIPickerViewDataSource, UIPickerViewDelegate {

    var carTypeDataSource = ["SUV","Family","Sport","Commercial"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.picker_carType.dataSource = self
        self.picker_carType.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet weak var picker_carType: UIPickerView!

    // DataSource
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return carTypeDataSource.count
    }
    
    // Delegate
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        
        // set selected row equal to global var
        selectedCarType = carTypeDataSource[row]
        print(selectedCarType)
        
        return carTypeDataSource[row]
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
    }
    
    // back button
  
    
}
