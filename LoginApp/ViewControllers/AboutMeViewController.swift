//
//  aboutMeViewController.swift
//  LoginApp
//
//  Created by Богдан Радченко on 18.02.2023.
//

import UIKit

class AboutMeViewController: UIViewController {
    
    @IBOutlet var myFaceImage: UIImageView!
    
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var surnameLabel: UILabel!
    @IBOutlet var dateOfBirthLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text = user.person.personName
        surnameLabel.text = user.person.personSurname
        dateOfBirthLabel.text = user.person.dateOfBirth
    }


}
