//
//  WelcomeViewController.swift
//  LoginApp
//
//  Created by Богдан Радченко on 14.02.2023.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet var welcomeLabel: UILabel!
    
    private let gradientLayer = CAGradientLayer()
    
    var welcomeText: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeLabel.text = welcomeText
        setupViewColor()
    }
    

    @IBAction func logOutButtonPressed() {
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        gradientLayer.frame = view.bounds
    }
    
    private func setupViewColor() { self.view.layer.addSublayer(gradientLayer)
        gradientLayer.colors = [UIColor.red.cgColor, UIColor.blue.cgColor]
        
        
    }

}
