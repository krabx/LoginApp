//
//  aboutMeViewController.swift
//  LoginApp
//
//  Created by Богдан Радченко on 18.02.2023.
//

import UIKit

final class AboutMeViewController: UIViewController {
    
    @IBOutlet var myFaceImage: UIImageView!
    
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var surnameLabel: UILabel!
    @IBOutlet var dateOfBirthLabel: UILabel!
    
    private let upColor = UIColor(
        red: 255/255,
        green: 255/255,
        blue: 255/255,
        alpha: 1
    )
    
    private let middleColor = UIColor(
        red: 225/255,
        green: 209/255,
        blue: 212/255,
        alpha: 1
    )
    
    private let downColor = UIColor(
        red: 225/255,
        green: 155/255,
        blue: 159/255,
        alpha: 1
    )
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameLabel.text = user.person.personName
        surnameLabel.text = user.person.personSurname
        dateOfBirthLabel.text = user.person.dateOfBirth
        
        view.addGradientLayer(
            firstColor: upColor,
            secondColor: middleColor,
            thirdColor: downColor
        )
    }
    
    override func viewWillLayoutSubviews() {
        myFaceImage.layer.cornerRadius = myFaceImage.frame.height / 2
    }
}
