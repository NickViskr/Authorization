//
//  LoginViewController.swift
//  Authorization
//
//  Created by Николай Выскребенцев on 03.07.2022.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet var userNameField: UITextField!
    @IBOutlet var passwordField: UITextField!
    
    private let authorizationDataUser = AuthorizationData.enterUserData()
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let tabBarController = segue.destination as? UITabBarController else {return}
        guard let viewControllers = tabBarController.viewControllers else {return}
        
        for viewController in viewControllers {
            if let welcomeVC = viewController as? WelcomeViewController {
                welcomeVC.user = authorizationDataUser
            } else if let aboutMeVC = viewController as? AboutMeViewController {
                aboutMeVC.biography = authorizationDataUser
            } else if let aboutWorkVC = viewController as? AboutWorkViewController {
                aboutWorkVC.textAboutWork = authorizationDataUser
            } else if let aboutTheHobbyVC = viewController as? AboutTheHobbyViewController {
                aboutTheHobbyVC.textAboutTheHobby = authorizationDataUser
            }
        }
    }
    
    // Метод для скрытия клавиатуры тапом по экрану
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
            view.endEditing(true)
    }
    
    @IBAction func logInPressed() {
        guard userNameField.text == authorizationDataUser.login, passwordField.text == authorizationDataUser.password else {
            showAlert(
                title: "Invalid login or password",
                message: "Enter correct login and password",
                textField: passwordField
            )
            return
        }
        performSegue(withIdentifier: "showWelcomeVC", sender: nil) // переход по сегвею
    }
    
    @IBAction func forgotUserNameTape() {
        showAlert(title: "Forgot your name?", message: "Enter \(authorizationDataUser.login)")
    }
    
    @IBAction func forgotPasswordTape() {
        showAlert(title: "Forgot your password?", message: "Enter \(authorizationDataUser.password)")
    }

    @IBAction func backSegwayRide(segue: UIStoryboardSegue) {
        userNameField.text = ""
        passwordField.text = ""
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

