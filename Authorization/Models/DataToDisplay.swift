//
//  DataToDisplay.swift
//  Authorization
//
//  Created by Николай Выскребенцев on 23.07.2022.
//

import Foundation

struct AuthorizationData {
    let user: String
    let password: String
    let name: String
    
    static func authorization() -> [AuthorizationData] {
        [
        AuthorizationData(
            user: "User",
            password: "Password",
            name: "God of programming"
        )
        ]
    }
    
}



