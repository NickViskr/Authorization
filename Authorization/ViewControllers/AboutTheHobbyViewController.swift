//
//  AboutTheHobbyViewController.swift
//  Authorization
//
//  Created by Николай Выскребенцев on 24.07.2022.
//

import UIKit

class AboutTheHobbyViewController: UIViewController {
    
    @IBOutlet var aboutTheHobby: UILabel!
    
    var textAboutTheHobby = ""
    
    override func viewDidLoad() {
        aboutTheHobby.text = textAboutTheHobby
    }
    
    private let authorizationData = AuthorizationData.enterUserData()
    
}
