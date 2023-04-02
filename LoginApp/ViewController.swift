//
//  ViewController.swift
//  LoginApp
//
//  Created by Vovo on 02.04.2023.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var loginTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loginButton.layer.cornerRadius = 10
        
    }
    // Метод для скрытия клавиатуры тапом по экрану
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeViewController else { return }
        welcomeVC.userTextLabel = loginTF.text
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        loginTF.text = ""
        passwordTF.text = ""
    }
    
    @IBAction func forgotNameTapped() {
        showAlert(withTitle: "Oops", andMessage: "Your  name is User")
    }
    
    @IBAction func forgotPasswordTapped() {
        showAlert(withTitle: "Oops", andMessage: "Your  password is 123")
    }
    
    @IBAction func loginButtonTapped() {
        if loginTF.text != "User" {
            showAlert(withTitle: "Login or password is not correct", andMessage: "Try logging in again")
        } else if passwordTF.text != "123" {
            showAlert(withTitle: "Login or password is not correct", andMessage: "Try logging in again")
        }
    }
        
      
    private func showAlert(withTitle title: String, andMessage message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAktion = UIAlertAction(title: "ok", style: .default) { _ in
            self.passwordTF.text = ""
        }
        alert.addAction(okAktion)
        present(alert, animated: true)
    }
}

