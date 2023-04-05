//
//  BiographyViewController.swift
//  LoginApp
//
//  Created by Vovo on 06.04.2023.
//

import UIKit

final class BiographyViewController: UIViewController {
   
    @IBOutlet weak var biographyLabel: UILabel!
    
    var biographyTextLabel: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        biographyLabel.text = biographyTextLabel 

        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = view.bounds
        gradientLayer.colors = [UIColor.systemPurple.cgColor, UIColor.systemTeal.cgColor]
        view.layer.insertSublayer(gradientLayer, at: 0)
    }

}
