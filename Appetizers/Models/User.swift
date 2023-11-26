//
//  User.swift
//  Appetizers
//
//  Created by Atikur Rahman on 11/26/23.
//

import Foundation

struct User: Codable {
    var firstName = ""
    var lastName = ""
    var email = ""
    var birthday = Date()
    var extraNapkins = false
    var frequentRefills = false
}
