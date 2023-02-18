//
//  WelcomeViewController.swift
//  LoginApp
//
//  Created by Богдан Радченко on 14.02.2023.
//

import UIKit

final class WelcomeViewController: UIViewController {

    @IBOutlet var welcomeLabel: UILabel!
    
    let userName = user.person.personName
    let userSurname = user.person.personSurname
    
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
        
        welcomeLabel.text = "Добро пожаловать! Меня зовут \(userName) \(userSurname)!"
        
        view.addGradientLayer(
            firstColor: upColor,
            secondColor: middleColor,
            thirdColor: downColor
        )
    }
}

extension UIView {
    func addGradientLayer(firstColor: UIColor, secondColor: UIColor, thirdColor: UIColor) {
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = bounds
        gradientLayer.colors = [firstColor.cgColor, secondColor.cgColor, thirdColor.cgColor]
        gradientLayer.locations = [0.0, 0.0, 1.0]
        gradientLayer.startPoint = CGPoint(x: 0, y: 0)
        gradientLayer.endPoint = CGPoint(x: 0, y: 1)
        layer.insertSublayer(gradientLayer, at: 0)
    }
}
