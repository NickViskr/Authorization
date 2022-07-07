//
//  ViewController.swift
//  Authorization
//
//  Created by Николай Выскребенцев on 03.07.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var userNameField: UITextField!
    @IBOutlet var passwordField: UITextField!
    
    private let user = "User"
    private let password = "Password"
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeViewController else { return }
        welcomeVC.user = user
    }
    
    
    
    // Метод для скрытия клавиатуры тапом по экрану
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
            view.endEditing(true)
        
    }
    
    @IBAction func logInPressed() {
        guard userNameField.text == user, passwordField.text == password else {
            showa
        }
    }
    
    
//    @IBAction func forgotUserNamePressed() {
//        showAlertName(with: "Your name?", and: "Enter \(user)")
//        return
//    }
//
//
//    @IBAction func forgotPasswordPressed() {
//        showAlertPassword(with: "Enter password", and: "Enter the word \(password)")
//        return
//    }
    
}

// MARK: - UIAlertController
extension ViewController {
     private func showAlertName(with title: String, and message: String) {
        let alertForgotUN = UIAlertController(title: title, message: message, preferredStyle: .alert)
         let okAlert = UIAlertAction(title: "Ok", style: .default)
        present(alertForgotUN, animated: true)
         
         alertForgotUN.addAction(okAlert)
    }
   
    
    private func showAlertPassword(with title: String, and message: String) {
        let alertForgotPassword = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAlert = UIAlertAction(title: "Ok", style: .default)
        present(alertForgotPassword, animated: true)
        
        alertForgotPassword.addAction(okAlert)
    }
}

