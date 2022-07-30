//
//  EmployeeListVC+Extension.swift
//  CoreData4
//
//  Created by Abhinay Pratap on 29/07/22.
//

import UIKit

extension EmployeeListVC: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selectedEmployeeRow = indexPath.row
        employeeTableView.deselectRow(at: indexPath, animated: true)
        performSegue(withIdentifier: "EmployeeDetailVC", sender: self)
    }
        
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "EmployeeDetailVC" {
            let destination = segue.destination as? EmployeeDetailVC
            destination?.selectedEmployee = employees[selectedEmployeeRow]
        }
    }
}

extension EmployeeListVC: UITableViewDataSource {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = employeeTableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! EmployeeListCell
        let employee = self.employees[indexPath.row]
        cell.nameLabel.text = employee.name
        cell.emailLabel.text = employee.email
        cell.profilePictureImageView.image = UIImage(data: employee.profilePicture!)
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        employees.count
    }
}
