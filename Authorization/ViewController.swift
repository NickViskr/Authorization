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
    
//    override func viewDidLoad() {
//        super.viewDidLoad()
//
//    }
    
    
    // Метод для скрытия клавиатуры тапом по экрану
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        if let _ = touches.first {
            view.endEditing(true)
        }
        
    }
    

    @IBAction func forgotUserNamePressed() {
        showAlertName(with: "Your name?", and: "Enter your name")
        return
    }
    
    
    @IBAction func forgotPasswordPressed() {
        showAlertPassword(with: "Enter password", and: "Enter the word Password")
        return
    }
    
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

