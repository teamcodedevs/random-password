//
//  PasswordGenerator.swift
//  Random Password
//
//  Created by Pedro Lobato on 30/05/21.
//

import Foundation

struct PasswordGenerator {
    func generate(_ length: Int, _ hasLetter: Bool, _ hasNumber: Bool, _ hasSymbol: Bool) -> String {
        let letters = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"
        let numbers = "0123456789"
        let symbols = "!@#$%^&*_-+=?<>:;(){}|\\/"
        
        var characters = ""
        
        if hasLetter {
            characters += letters
        }
        if hasNumber {
            characters += numbers
        }
        if hasSymbol {
            characters += symbols
        }
        
        let randomCharacters = (0..<length).map{_ in characters.randomElement()!}
        let randomString = String(randomCharacters)
        
        return randomString
    }
}
