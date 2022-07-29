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
    override func viewDidLoad() {
        super.viewDidLoad()
        let path = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
        debugPrint(path[0])
    }
    @IBAction func didTapCreate(_ sender: UIButton) {
    }
}
