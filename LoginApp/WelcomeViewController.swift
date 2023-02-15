//
//  WelcomeViewController.swift
//  LoginApp
//
//  Created by Богдан Радченко on 14.02.2023.
//

import UIKit

final class WelcomeViewController: UIViewController {

    @IBOutlet var welcomeLabel: UILabel!
    
    var welcomeText: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeLabel.text = welcomeText ?? ""
        setupViewColor()
    }
    
    private func setupViewColor() {
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = view.bounds
        view.layer.insertSublayer(gradientLayer, at: 0)
        gradientLayer.colors = [UIColor.yellow.cgColor, UIColor.purple.cgColor]
    }
}
