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
    func get(byIdentifier: UUID) -> Employee?
    func update(employee: Employee)
    func delete(employee: Employee)
}

struct EmployeeDataRepository: EmployeeRepository {
    func create(employee: Employee) {
        <#code#>
    }
    
    func getAll() -> [Employee]? {
        <#code#>
    }
    func get(byIdentifier: UUID) -> Employee? {
        <#code#>
    }
    
    func update(employee: Employee) {
        <#code#>
    }
    
    func delete(employee: Employee) {
        <#code#>
    }
}
