//
//  EmployeeListCell.swift
//  CoreData4
//
//  Created by Abhinay Pratap on 29/07/22.
//

import UIKit

class EmployeeListCell: UITableViewCell {

        @IBOutlet weak var profilePictureImageView: UIImageView!
        @IBOutlet weak var nameLabel: UILabel!
        @IBOutlet weak var emailLabel: UILabel!
        
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

}
