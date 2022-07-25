//
//  DataToDisplay.swift
//  Authorization
//
//  Created by Николай Выскребенцев on 23.07.2022.
//

struct AuthorizationData {
    let login: String
    let password: String
    let name: Person
    
    static func enterUserData() -> AuthorizationData {
        AuthorizationData(
            login: "User",
            password: "Password",
            name: Person.enterPerson()
        )
    }
}

struct Person {
    let name: String
    let surname: String
    let info: String
    
    static func enterPerson() -> Person {
        Person(
            name: "Nick",
            surname: "Viskrebevtsev",
            info: "Родился, вырос, женился, бла-бла-бал)))"
        )
    }
    
}




