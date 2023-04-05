//
//  ViewController.swift
//  LoginApp
//
//  Created by Vovo on 02.04.2023.
//

import UIKit

final class LoginViewController: UIViewController {

    @IBOutlet weak var loginTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    
    private let user = User.getUser()
   
    // MARK: - Override Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        loginTF.text = user.login
        passwordTF.text = user.password
        
        loginButton.layer.cornerRadius = 10
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let tabBarController = segue.destination as? UITabBarController else { return }
        guard let viewControllers = tabBarController.viewControllers else { return }
        
        viewControllers.forEach { viewController in
            if let welcomeVC = viewController as? WelcomeViewController {
                welcomeVC.userTextLabel = user.userName
                welcomeVC.welcomeName = user.person.name
            } else if let navigationVC = viewController as? UINavigationController {
                guard let userVC = navigationVC.topViewController as? UserViewController else { return }
                userVC.nameTextLabel = user.person.name
                userVC.surnameTextLabel = user.person.surname
                userVC.companyTextLabel = user.person.company
                userVC.departmentTextLabel = user.person.department
                userVC.postTextLabel = user.person.post
                userVC.biographyTextLabel = user.person.biography
            }
        }
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
        guard loginTF.text == user.login, passwordTF.text == user.password else {
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


