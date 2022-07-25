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
    
    private let authorizationData = AuthorizationData.enterUserData()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        userNameField.text = authorizationData.login
        passwordField.text = authorizationData.password
    }
    
    private let user = "User" // надо убирать
    private let password = "Password"  // надо убирать
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let tabBarController = segue.destination as? UITabBarController else {return}
        guard let viewControllers = tabBarController.viewControllers else {return}
        
        for viewController in viewControllers {
            if let welcomeVC = viewController as? WelcomeViewController {
                welcomeVC.user = authorizationData.name.name
            } else if let aboutMeVC = viewController as? AboutMeViewController {
                aboutMeVC.view.largeContentTitle = authorizationData.name.info
            }
        }
//        viewControllers.forEach {
//
//            if let welcomeVC = $0 as? WelcomeViewController {
//                welcomeVC.user = user
//            } else if let aboutMeVC = $0 as? AboutMeViewController {
//                aboutMeVC.
//}
//        }
        
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
                message: "Enter correct login and password",
                textField: passwordField
            )
            return
        }
        performSegue(withIdentifier: "showWelcomeVC", sender: nil) // переход по сегвею
    }
    
    @IBAction func forgotUserNameTape() {
        showAlert(title: "Forgot your name?", message: "Enter \(user)")
    }
    
    @IBAction func forgotPasswordTape() {
        showAlert(title: "Forgot your password?", message: "Enter \(password)")
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

