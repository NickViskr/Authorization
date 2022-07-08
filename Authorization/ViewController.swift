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
            showAlert(
                title: "Invalid login or password",
                message: "Please, enter correct login and password",
                textField: passwordField
            )
            return
        }
        performSegue(withIdentifier: "showWelcomeVC", sender: nil)
    }
    

    @IBAction func unwindSegue(segue: UIStoryboardSegue) {
        userNameField.text = ""
        passwordField.text = ""
    }
    
}

// MARK: - UIAlertController

// сделано криво, три алекрт контроллера не надо делать
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
    
    
    private func showAlert(title: String, message: String, textField: UITextField? = nil) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "Ok", style: .default) {_ in
            textField?.text = ""
        }
        alert.addAction(okAction)
        present(alert, animated: true)
        
        
    }
}

