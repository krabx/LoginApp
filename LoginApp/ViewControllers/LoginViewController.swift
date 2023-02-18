//
//  ViewController.swift
//  LoginApp
//
//  Created by Богдан Радченко on 13.02.2023.
//

import UIKit

final class LoginViewController: UIViewController {
    
    @IBOutlet var userNameTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    
    @IBOutlet var forgotNameButton: UIButton!
    @IBOutlet var forgotPasswordButton: UIButton!
    
    private let correctUserName = user.userName
    private let correctPassword = user.userPassword
    
    override func viewDidLoad() {
        userNameTF.text = correctUserName
        passwordTF.text = correctPassword
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    /*
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeViewController else { return }
        welcomeVC.user = correctUserName
    }
    */
    
    @IBAction func logInButtonPressed() {
        guard passwordTF.text == correctPassword, userNameTF.text == correctUserName
        else {
            showAlert(
                withTitle: "invalid login or password",
                andMessage: "Please input correct login and password",
                textField: passwordTF
            )
            return
        }
        performSegue(withIdentifier: "welcomeVC", sender: nil)
    }
    
    @IBAction func forgotButtonPressed(_ sender: UIButton) {
        sender == forgotNameButton
            ? showAlert(withTitle: "Oops!", andMessage: "Your userName is \(correctUserName)")
            : showAlert(withTitle: "Oops!", andMessage: "Your password is \(correctPassword)")
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue, sender: Any?) {
        let _ = segue.source as? WelcomeViewController
        userNameTF.text = ""
        passwordTF.text = ""
    }
}

extension LoginViewController {
    private func showAlert(
        withTitle: String,
        andMessage: String,
        textField: UITextField? = nil)
    {
        let alert = UIAlertController(
            title: withTitle,
            message: andMessage,
            preferredStyle: .alert
        )
        let actionButton = UIAlertAction(title: "OK", style: .default) { _ in
            textField?.text = ""
        }
        
        alert.addAction(actionButton)
        present(alert, animated: true)
    }
}

