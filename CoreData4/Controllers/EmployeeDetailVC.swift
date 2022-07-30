//
//  EmployeeDetailVC.swift
//  CoreData4
//
//  Created by Abhinay Pratap on 29/07/22.
//

import UIKit

class EmployeeDetailVC: UIViewController {
    
    @IBOutlet weak var profilePictureImageView: UIImageView!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    
    private let manager = EmployeeManager()
    var selectedEmployee: Employee?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewWillSetUp()
    }
    
    func viewWillSetUp() {
        nameTextField.text = selectedEmployee?.name
        emailTextField.text = selectedEmployee?.email
        profilePictureImageView.image = UIImage(data: (selectedEmployee?.profilePicture)!)
    }
    @IBAction func didTapUpdate(_ sender: UIButton) {
        let employee = Employee(name: nameTextField.text, email: emailTextField.text, id: selectedEmployee!.id, profilePicture: UIImage(systemName: "person")?.pngData())
        if manager.updateEmployee(employee: employee) {
            displayAlert("Employee details updated")
        } else {
            displayErrorAlert()
        }
//        displayAlert("Updated")
    }
    
    @IBAction func didTapDelete(_ sender: UIButton) {
        if manager.deleteEmployee(byIdentifier: selectedEmployee!.id) {
            displayAlert("Employee deleted")
        } else {
            displayErrorAlert()
        }
            
//        displayAlert("Deleted")
    }
    
    private func displayAlert(_ alertMessage: String) {
        let alert = UIAlertController(title: "Alert", message: alertMessage, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Okay", style: .default, handler: { action in
            self.navigationController?.popViewController(animated: true)
        }))
        present(alert, animated: true)
    }
    
    private func displayErrorAlert() {
        let alert = UIAlertController(title: "Alert", message: "Something went wrong, please try again later", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Okay", style: .default, handler: nil))
        present(alert, animated: true)
    }
}
