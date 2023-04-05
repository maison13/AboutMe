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
    
    private let login = "Guest"
    private let password = "Pass"
    
    // MARK: - Override Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        loginButton.layer.cornerRadius = 10
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeViewController else { return }
        welcomeVC.userTextLabel = login
    }
    // MARK: - IB Actions
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        loginTF.text = ""
        passwordTF.text = ""
    }
    
    @IBAction func forgotRegisterData(_ sender: UIButton) {
        sender.tag == 0
            ? showAlert(withTitle: "Oops", andMessage: "Your  name is Guest \u{1F609}")
            : showAlert(withTitle: "Oops", andMessage: "Your  password is Pass \u{1F60B}")
    }
   
    @IBAction func loginButtonTapped() {
        guard loginTF.text == login, passwordTF.text == password else {
            showAlert(
                withTitle: "Login or password is not correct",
                andMessage: "Try logging in again",
                textField: passwordTF
            )
            return
        }
        performSegue(withIdentifier: "showWelcomVC", sender: nil)
    }
    // MARK: - Private Methods
    private func showAlert(withTitle title: String, andMessage message: String, textField: UITextField? = nil) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAktion = UIAlertAction(title: "ok", style: .default) { _ in
            textField?.text = ""
            }
        alert.addAction(okAktion)
        present(alert, animated: true)
    }
}


