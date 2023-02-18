//
//  User.swift
//  LoginApp
//
//  Created by Богдан Радченко on 18.02.2023.
//

struct User {
    let userName = "user"
    let userPassword = "password"
    let person: Person
}

struct Person {
    var personName: String
}

let user = User(person: Person(personName: "Богдан Радченко"))
