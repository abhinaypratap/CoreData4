//
//  EmployeeDataRepository.swift
//  CoreData4
//
//  Created by Abhinay Pratap on 29/07/22.
//

import Foundation
import CoreData

protocol EmployeeRepository {
    func create(employee: Employee)
    func getAll() -> [Employee]?
    func get(byIdentifier id: UUID) -> Employee?
    func update(employee: Employee)
    func delete(employee: Employee)
}

struct EmployeeDataRepository: EmployeeRepository {
    func create(employee: Employee) {
        
        let cdEmployee = CDEmployee(context: PersistentStorage.shared.context)
        cdEmployee.email = employee.email
        cdEmployee.name = employee.name
        cdEmployee.id = employee.id
        cdEmployee.profilePicture = employee.profilePicture
        
        PersistentStorage.shared.saveContext()
    }
    
    func getAll() -> [Employee]? {
        
        let result = PersistentStorage.shared.fetchManagedObject(managedObject: CDEmployee.self)
        var employees = [Employee]()
        result?.forEach({ cdEmployee in
            employees.append(cdEmployee.convertToEmployee())
        })
        return employees
    }
    func get(byIdentifier id: UUID) -> Employee? {
        let fetchRequest = NSFetchRequest<CDEmployee>(entityName: "CDEmployee")
        let predicate = NSPredicate(format: "id==%@", id as CVarArg)
        
        fetchRequest.predicate = predicate
        do {
            let result = try PersistentStorage.shared.context.fetch(fetchRequest).first
            guard result != nil else { return nil }
            return result?.convertToEmployee()
        } catch {
            debugPrint(error)
        }
    }
    
    func update(employee: Employee) {
        <#code#>
    }
    
    func delete(employee: Employee) {
        <#code#>
    }
}
