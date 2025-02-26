//
//  Checker.swift
//  Navigation
//
//  Created by Валерия Новикова on 26/02/2025.
//  Copyright © 2025 Валерия Новикова. All rights reserved.
//

import Foundation

class Checker: LoginViewControllerDelegate {
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

protocol LoginViewControllerDelegate: AnyObject {
    func check(with login: String, with password: String) -> Bool
}

class LoginInspector: LoginViewControllerDelegate {
    func check(with login: String, with password: String) -> Bool {
        return Checker.shared.check(with: login, with: password)
    }
}
