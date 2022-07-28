//
//  Employee+CoreDataProperties.swift
//  CoreData4
//
//  Created by Abhinay Pratap on 28/07/22.
//
//

import Foundation
import CoreData


extension Employee {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Employee> {
        return NSFetchRequest<Employee>(entityName: "Employee")
    }

    @NSManaged public var name: String?

}

extension Employee : Identifiable {

}
