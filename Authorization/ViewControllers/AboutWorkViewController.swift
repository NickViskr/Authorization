//
//  AboutWorkViewController.swift
//  Authorization
//
//  Created by Николай Выскребенцев on 24.07.2022.
//

import UIKit

class AboutWorkViewController: UIViewController {
    
    @IBOutlet var aboutWork: UILabel!
    
    var textAboutWork = ""
    
    override func viewDidLoad() {
        aboutWork.text = textAboutWork
    }
    
    private let authorizationData = AuthorizationData.enterUserData()
    
}
