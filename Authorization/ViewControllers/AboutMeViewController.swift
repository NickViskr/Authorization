//
//  AboutMeViewController.swift
//  Authorization
//
//  Created by Николай Выскребенцев on 24.07.2022.
//

import UIKit

class AboutMeViewController: UIViewController {
    
    @IBOutlet var aboutMe: UILabel!
    
   var text = ""
    
    override func viewDidLoad() {
        aboutMe.text = text
        
    }
    
    private let authorizationData = AuthorizationData.enterUserData()
}

