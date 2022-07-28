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
    let work: String
    let theHobby: String
    let photo: String
    
    static func enterPerson() -> Person {
        Person(
            name: "Nick",
            surname: "Viskrebevtsev",
            info: "Родился 24 февраля 1955 года в городке Маунтин Вью, штат Калифорния. Его детство и юность прошли там же, в приёмной семье Пола и Клары Джобс, которым его отдала на воспитание родная мать.",
            work: """
            Стивен Джобс и Стивен Возняк стали основателями компании «Эпл». Автором большинства разработок был Стивен Возняк, тогда как Джобс выступал маркетологом. Считается, что именно Джобс убедил Возняка доработать придуманную им схему микрокомпьютера, и тем самым дал толчок к созданию нового рынка персональных компьютеров.
            """,
            theHobby: """
            Мое хобби - финансы и все, что связанно с финансовыми рынками
            """,
            photo: "Stive"
        )
    }
    
}




