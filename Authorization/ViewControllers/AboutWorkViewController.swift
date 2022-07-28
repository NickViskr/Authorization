//
//  AboutWorkViewController.swift
//  Authorization
//
//  Created by Николай Выскребенцев on 24.07.2022.
//

import UIKit

class AboutWorkViewController: UIViewController {
    
    @IBOutlet var aboutWork: UITextView!
    var textAboutWork = ""
    
    override func viewDidLoad() {
        view.addVerticalGradientLayer()
        aboutWork.backgroundColor = .clear
        aboutWork.textColor = .black
        aboutWork.text = textAboutWork
    }
}
