//
//  CDEmployee+CoreDataProperties.swift
//  CoreData4
//
//  Created by Abhinay Pratap on 29/07/22.
//
//

import Foundation
import CoreData


extension CDEmployee {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<CDEmployee> {
        return NSFetchRequest<CDEmployee>(entityName: "CDEmployee")
    }

    @NSManaged public var profilePicture: Data?
    @NSManaged public var name: String?
    @NSManaged public var id: UUID?
    @NSManaged public var email: String?

}

extension CDEmployee : Identifiable {

}

extension CDEmployee {
    func convertToEmployee() -> Employee {
        Employee(name: self.name, email: self.email, id: self.id!, profilePicture: self.profilePicture)
    }
}
