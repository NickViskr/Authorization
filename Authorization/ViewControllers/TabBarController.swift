//
//  TabBarController.swift
//  Authorization
//
//  Created by Николай Выскребенцев on 27.07.2022.
//

import UIKit

class TabBarController: UITabBarController {
    override func viewDidLoad() {
        super.viewDidLoad()
        let appearance = UITabBarAppearance() // непрозрачный фон TabBar
        tabBar.standardAppearance = appearance
        tabBar.scrollEdgeAppearance = appearance
    }
}

