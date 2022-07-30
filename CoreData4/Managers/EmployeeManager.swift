//
//  EmployeeManager.swift
//  CoreData4
//
//  Created by Abhinay Pratap on 29/07/22.
//

import Foundation
import CoreData

struct EmployeeManager {
    
    private let _employeeDataRepository = EmployeeDataRepository()
    
    func createEmployee(employee: Employee) {
        _employeeDataRepository.create(employee: employee)
    }
    
    func fetchEmployee() -> [Employee] {
        _employeeDataRepository.getAll()
    }
    
    func fetchEmployee(byIdentifier id: UUID) -> Employee? {
        _employeeDataRepository.get(byIdentifier: id)
    }
    
    func updateEmployee(employee: Employee) -> Bool {
        _employeeDataRepository.update(employee: employee)
    }
    
    func deleteEmployee(byIdentifier id: UUID) -> Bool {
        _employeeDataRepository.delete(byIdentifier: id)
    }
}
