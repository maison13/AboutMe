//
//  User.swift
//  LoginApp
//
//  Created by Vovo on 05.04.2023.
//

struct User {
    let login = "Guest"
    let password = "Pass"
    let userName = "Alexey"
    let person: Person
    
    static func getUser() -> User {
        User(
            person:
                Person(
                    name: "Matt",
                    surname: "Damon",
                    company: "Artists Equity",
                    department: "Movie",
                    post: "Actor",
                    biography: """
                    Мэтт Деймон – американский актёр, лауреат премии «Оскар»
                    за сценарий к фильму «Умница Уилл Хантинг». Он также известен
                    по роли Джейсона Борна в серии фильмом с одноименным названием.
                    """
                    )
            )
    }
}

struct Person {
    let name: String
    let surname: String
    let company: String
    let department: String
    let post: String
    let biography: String
}

