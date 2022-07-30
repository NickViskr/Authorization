//
//  AboutMeViewController.swift
//  Authorization
//
//  Created by Николай Выскребенцев on 24.07.2022.
//

import UIKit

class AboutMeViewController: UIViewController {
    
    @IBOutlet var photo: UIImageView! {
        didSet {photo.layer.cornerRadius = photo.frame.height / 2
        }
    }
    
    @IBOutlet var aboutMe: UITextView!
    var biography: AuthorizationData!
    
    override func viewDidLoad() {
        view.addVerticalGradientLayer()
        photo.image = UIImage(named: biography.name.photo)
        aboutMe.backgroundColor = .clear
        aboutMe.textColor = .black
        aboutMe.text = biography.name.info
    }
}

