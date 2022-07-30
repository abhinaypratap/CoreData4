//
//  EmployeeListVC.swift
//  CoreData4
//
//  Created by Abhinay Pratap on 29/07/22.
//

import UIKit

class EmployeeListVC: UIViewController {
    
    @IBOutlet weak var employeeTableView: UITableView!
    private let manager = EmployeeManager()
    var employees = [Employee]()
//    TODO: do something here for the selectedEmployeeRow
    var selectedEmployeeRow: Int = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        employeeTableView.delegate = self
        employeeTableView.dataSource = self
        populateTable()
        
        title = "Employees"
        navigationController?.navigationBar.prefersLargeTitles = true
    }
    
    func populateTable() {
        employees = manager.fetchEmployee()
        DispatchQueue.main.async {
            self.employeeTableView.reloadData()
        }
    }
    override func viewWillAppear(_ animated: Bool) {
        populateTable()
    }
}
