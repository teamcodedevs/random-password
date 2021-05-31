//
//  PasswordGenerator.swift
//  Random Password
//
//  Created by Pedro Lobato on 30/05/21.
//

import Foundation

struct PasswordGenerator {
    
    let password: Password = Password()
    
    func generate(_ length: Int, _ hasLetter: Bool, _ hasNumber: Bool, _ hasSymbol: Bool) -> String {
        var characters = ""
        
        if hasLetter {
            characters += password.letters
        }
        if hasNumber {
            characters += password.numbers
        }
        if hasSymbol {
            characters += password.symbols
        }
        
        let randomCharacters = (0..<length).map{_ in characters.randomElement()!}
        let randomString = String(randomCharacters)
        
        return randomString
    }
}
