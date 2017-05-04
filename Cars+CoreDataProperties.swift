//
//  Cars+CoreDataProperties.swift
//  Auto Search PRO
//
//  Created by Eduardo L. Perez on 5/3/17.
//  Copyright © 2017 eperez6. All rights reserved.
//  This file was automatically generated and should not be edited.
//

import Foundation
import CoreData


extension Cars {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Cars> {
        return NSFetchRequest<Cars>(entityName: "Cars");
    }

    @NSManaged public var carDescription: String?
    @NSManaged public var carMake: String?
    @NSManaged public var carMileage: String?
    @NSManaged public var carModel: String?
    @NSManaged public var carPrice: String?
    @NSManaged public var carType: String?
    @NSManaged public var carYear: String?

}
