//
//  User.swift
//  Appetizers
//
//  Created by Mladen Pašara on 08.07.2025..
//

import Foundation

struct User: Codable {
    var firstName = ""
    var lastName = ""
    var email = ""
    var birthdate = Date()
    var extraNapkins = false
    var frequentRefills = true
}
