//
//  WelcomeViewController.swift
//  LoginApp
//
//  Created by Vovo on 02.04.2023.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet weak var welcomeLabel: UILabel!
    @IBOutlet weak var userLabel: UILabel!
    
    var userTextLabel: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        userLabel.text = userTextLabel
       
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = view.bounds
        gradientLayer.colors = [UIColor.systemPurple.cgColor, UIColor.systemTeal.cgColor]
        view.layer.insertSublayer(gradientLayer, at: 0)
    }
}
