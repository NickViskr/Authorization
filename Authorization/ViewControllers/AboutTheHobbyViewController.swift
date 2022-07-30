//
//  AboutTheHobbyViewController.swift
//  Authorization
//
//  Created by Николай Выскребенцев on 24.07.2022.
//

import UIKit

class AboutTheHobbyViewController: UIViewController {
    
    @IBOutlet var aboutTheHobby: UITextView!
    var textAboutTheHobby: AuthorizationData!
    
    override func viewDidLoad() {
        view.addVerticalGradientLayer()
        aboutTheHobby.backgroundColor = .clear
        aboutTheHobby.textColor = .black
        aboutTheHobby.text = textAboutTheHobby.name.theHobby
    }
    
}
