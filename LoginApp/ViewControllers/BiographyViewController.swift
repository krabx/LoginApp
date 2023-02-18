//
//  BiographyViewController.swift
//  LoginApp
//
//  Created by Богдан Радченко on 18.02.2023.
//

import UIKit

class BiographyViewController: UIViewController {

    @IBOutlet var biographyLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        biographyLabel.text = user.person.biography
        // Do any additional setup after loading the view.
    }

}
