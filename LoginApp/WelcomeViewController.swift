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
    
    private let gradientLayer = CAGradientLayer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeLabel.text = welcomeText
        setupViewColor()
    }
    
    private func setupViewColor() {
        gradientLayer.frame = view.bounds
        self.view.layer.insertSublayer(gradientLayer, at: 0)
        gradientLayer.colors = [UIColor.yellow.cgColor, UIColor.purple.cgColor]
    }
}
