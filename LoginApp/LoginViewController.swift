//
//  ViewController.swift
//  LoginApp
//
//  Created by Богдан Радченко on 13.02.2023.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet var userNameTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    
    private let correctUserName = "1"
    private let correctPassword = "1"
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func logInButtonPressed() {
        guard let truePassword = passwordTF.text, truePassword == correctPassword else {
            showAlert(withTitle: "invalid login or password", andMessage: "Please input correct login and password")
            return
        }
    }
    
    @IBAction func forgotNameButtonPressed() {
        showAlert(withTitle: "Oops!", andMessage: "Your userName is 1")
    }
    
    @IBAction func forgotPasswordButtonPressed() {
        showAlert(withTitle: "Oops!", andMessage: "Your password is 1")
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeViewController else { return }
        welcomeVC.welcomeText = "Welcome, \(userNameTF.text ?? "")"
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue, sender: Any?) {
        guard let _ = segue.source as? WelcomeViewController else { return }
        userNameTF.text = ""
        passwordTF.text = ""
    }
    
}

extension LoginViewController {
    
    private func showAlert(withTitle: String, andMessage: String) {
        let alert = UIAlertController(title: withTitle, message: andMessage, preferredStyle: .alert)
        let actionButton = UIAlertAction(title: "OK", style: .default) { _ in
            self.passwordTF.text = ""
        }
        alert.addAction(actionButton)
        present(alert, animated: true)
    }
    
}

