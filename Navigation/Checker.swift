//
//  Checker.swift
//  Navigation
//
//  Created by Валерия Новикова on 26/02/2025.
//  Copyright © 2025 Валерия Новикова. All rights reserved.
//

import Foundation

class Checker {
    static var shared = Checker()
    private let login: String = "login"
    private let password: String = "password"
    
    private init() {}
    
    func check(with login: String, with password: String) -> Bool {
        if (self.login == login && self.password == password) {
            return true
        } else {
            return false
        }
    }
}
