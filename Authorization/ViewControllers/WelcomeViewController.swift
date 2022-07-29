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
    var user = ""
    
    override func viewDidLoad() {
        view.addVerticalGradientLayer()
        welcomField.text = "Welcome, \(user)!"
    }
    
    // нажатие кнопки закрывает вью
    @IBAction func exitButtonPress() {
        dismiss(animated: true)
    }
}
