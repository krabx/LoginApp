//
//  PetProjectViewController.swift
//  LoginApp
//
//  Created by Богдан Радченко on 18.02.2023.
//

import UIKit

class PetProjectViewController: UIViewController {

    @IBOutlet var passwordgeneratorImage: UIImageView!
    @IBOutlet var botRemainderImage: UIImageView!
    @IBOutlet var petProjectOnSwiftImage: UIImageView!
    
    @IBOutlet var passwordGeneratorLabel: UILabel!
    @IBOutlet var botRemainderLabel: UILabel!
    @IBOutlet var petProjectOnSwiftLabel: UILabel!
    
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
        
        passwordGeneratorLabel.text = user.person.passwordGenerator
        botRemainderLabel.text = user.person.botRemainder
        petProjectOnSwiftLabel.text = user.person.petProjectOnSwift
        
        view.addGradientLayer(
            firstColor: upColor,
            secondColor: middleColor,
            thirdColor: downColor
        )
    }
    
    override func viewWillLayoutSubviews() {
        passwordgeneratorImage.layer.cornerRadius = passwordgeneratorImage.frame.height / 2
        botRemainderImage.layer.cornerRadius = botRemainderImage.frame.height / 2
        petProjectOnSwiftImage.layer.cornerRadius = petProjectOnSwiftImage.frame.height / 2
    }

}
