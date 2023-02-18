//
//  BiographyViewController.swift
//  LoginApp
//
//  Created by Богдан Радченко on 18.02.2023.
//

import UIKit

class BiographyViewController: UIViewController {

    @IBOutlet var biographyLabel: UILabel!
    
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
        biographyLabel.text = user.person.biography
        view.addGradientLayer(
            firstColor: upColor,
            secondColor: middleColor,
            thirdColor: downColor
        )
    }
}
