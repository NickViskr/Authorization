//
//  AboutMeViewController.swift
//  Authorization
//
//  Created by Николай Выскребенцев on 24.07.2022.
//

import UIKit

class AboutMeViewController: UIViewController {
    

    @IBOutlet var aboutMe: UITextView!
    var text = ""
    
    override func viewDidLoad() {
        aboutMe.backgroundColor = .clear
        aboutMe.textColor = .black
        aboutMe.text = text
        
    }
}

