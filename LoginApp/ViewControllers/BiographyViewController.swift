//
//  BiographyViewController.swift
//  LoginApp
//
//  Created by Vovo on 06.04.2023.
//

import UIKit

class BiographyViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = view.bounds
        gradientLayer.colors = [UIColor.systemPurple.cgColor, UIColor.systemTeal.cgColor]
        view.layer.insertSublayer(gradientLayer, at: 0)
    }
    

    

}
