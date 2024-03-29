//
//  WelcomeViewController.swift
//  Authorization
//
//  Created by Николай Выскребенцев on 04.07.2022.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet var welcomField: UILabel!
    @IBOutlet var backButton: UIButton!
    var user: AuthorizationData!
    
    override func viewDidLoad() {
        view.addVerticalGradientLayer()
        welcomField.text = "Welcome, \(user.name.name)!"
    }
    
    // нажатие кнопки закрывает вью
    @IBAction func exitButtonPress() {
        dismiss(animated: true)
    }
}
