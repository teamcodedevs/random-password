//
//  PasswordData.swift
//  Random Password
//
//  Created by Kássio Vieira da Luz on 29/05/21.
//

import Foundation

class PasswordData: ObservableObject {
    @Published var sliderValue: Double = 4
    @Published var password: String = ""
    @Published var hasNumber: Bool = true
    @Published var hasLetter: Bool = false
    @Published var hasSymbols: Bool = false
    
    var passwordGenerator = PasswordGenerator()
    
    func refreshPressed(){
        password = passwordGenerator.generate(Int(sliderValue), hasLetter, hasNumber, hasSymbols)
    }
}
