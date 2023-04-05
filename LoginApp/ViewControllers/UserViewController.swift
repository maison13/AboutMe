//
//  UserViewController.swift
//  LoginApp
//
//  Created by Vovo on 05.04.2023.
//

import UIKit

final class UserViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var surnameLabel: UILabel!
    @IBOutlet weak var companyLabel: UILabel!
    @IBOutlet weak var departmentLabel: UILabel!
    @IBOutlet weak var postLaberl: UILabel!
    
    var nameTextLabel: String!
    var surnameTextLabel: String!
    var companyTextLabel: String!
    var departmentTextLabel: String!
    var postTextLabel: String!
    var biographyTextLabel: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        nameLabel.text = nameTextLabel
        surnameLabel.text = surnameTextLabel
        companyLabel.text = companyTextLabel
        departmentLabel.text = departmentTextLabel
        postLaberl.text = postTextLabel
                
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = view.bounds
        gradientLayer.colors = [UIColor.systemPurple.cgColor, UIColor.systemTeal.cgColor]
        view.layer.insertSublayer(gradientLayer, at: 0)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let biographyVC = segue.destination as? BiographyViewController else { return }
        biographyVC.biographyTextLabel = biographyTextLabel
    }


}
