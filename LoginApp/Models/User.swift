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
    var personSurname: String
    var dateOfBirth: String
    var biography: String
    var passwordGenerator: String
    var botRemainder: String
    var petProjectOnSwift: String
}

let user = User(person: Person(personName: "Богдан",
                               personSurname: "Радченко",
                               dateOfBirth: "04.02.1996",
                               biography: "Я родился в Москве. Отучился в Московском Энергетическом Институте, получил там два диплома и не работал по образованию ни разу). Осознать что нравится и что интересно сразу не получилось, как и у многих. После института работал на севере по специальности техник-лаборант в отделе цементирования скважин. По-началу было интересно и очень холодно, потом осталось только очень холодно. После перебрался в Москву на похожую позицию, но удовольствия не было от слова совсем, а выхода другого не было. В марте 2020 года случилась пандемия и для меня оказалась определяющей, я познакомился с миром программирования (в институте конечно тоже было знакомство, но Фортран не казался привлекательным). По мере самостоятельного изучения html, javaScript, php получилось найти работу уже в сфере IT, но не совсем. На новой работе пришлось работать в программе по формированию отчетностей и бюджетирования, писал код не совсем высокоуровневый, в основном были концепции if-else и while. Но все это время в голове была разработка на Swift. Купил компьютер и старался делать сам, но понял что знаний недостаточно и время не всегда получается выделять в связи с резиновым графиком работы. Теперь я здесь, под руководством профессионала надеюсь постичь все азы и заниматься тем, что нравится!",
                               passwordGenerator: "Генератор паролей на python. Позже повторю приложение на swift.",
                               botRemainder: "Пробный чат бот на python. Использовался как напоминалка.",
                               petProjectOnSwift: "Пет проект на swift, пока незавершен. Идея в рисовании подобных схем в приложении."
                              )
)
