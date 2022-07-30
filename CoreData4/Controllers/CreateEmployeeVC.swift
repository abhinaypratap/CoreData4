//
//  ViewController.swift
//  CoreData4
//
//  Created by Abhinay Pratap on 28/07/22.
//

import UIKit

class CreateEmployeeVC: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var profilePictureImageView: UIImageView!
    
    private let manager = EmployeeManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let path = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
        debugPrint(path[0])
    }
    
    @IBAction func didTapCreate(_ sender: UIButton) {
        let employee = Employee(name: nameTextField.text, email: emailTextField.text, id: UUID(), profilePicture: profilePictureImageView.image?.pngData())
        guard let text1 = nameTextField.text, !text1.isEmpty, let text2 = emailTextField.text, !text2.isEmpty else { return }
        manager.createEmployee(employee: employee)
        performSegue(withIdentifier: "EmployeeListVC", sender: nil)

    }
}

//extension CreateEmployeeVC: UIImagePickerControllerDelegate & UINavigationControllerDelegate {
//
//    @IBAction func didTapImage(_ sender: UIImageView) {
//        let picker = UIImagePickerController()
//        picker.sourceType = .savedPhotosAlbum
//        picker.delegate = self
//        present(picker, animated: true)
//    }
//    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
//        let image = info[.originalImage] as? UIImage
//        self.profilePictureImageView.image = image
//        dismiss(animated: true, completion: nil)
//    }
//}
