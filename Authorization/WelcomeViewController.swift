//
//  WelcomeViewController.swift
//  Authorization
//
//  Created by Николай Выскребенцев on 04.07.2022.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet var welcomeField: UITextField!
    @IBOutlet var backButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    // нажатие кнопки закрывает вью
    @IBAction func exitButtonPress() {
        dismiss(animated: true)
    }
    

}
