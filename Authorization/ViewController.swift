//
//  ViewController.swift
//  Authorization
//
//  Created by Николай Выскребенцев on 03.07.2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var userName: UITextField!
    @IBOutlet var password: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func forgotUserNamePressed() {
        showAlertName(with: "Your name", and: "Enter your name")
        return
    }
    
    @IBAction func forgotPasswordPressed() {
        showAlertPassword(with: "Enter password", and: "enter the word Password")
        return
    }
    
}

// MARK: - UIAlertController
extension ViewController {
     private func showAlertName(with title: String, and message: String) {
        let alertForgotUN = UIAlertController(title: title, message: message, preferredStyle: .alert)
        present(alertForgotUN, animated: true)
    }
   
    
    private func showAlertPassword(with title: String, and message: String) {
        let alertForgotPassword = UIAlertController(title: title, message: message, preferredStyle: .alert)
        present(alertForgotPassword, animated: true)
    }
}

