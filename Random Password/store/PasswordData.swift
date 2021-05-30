//
//  PasswordData.swift
//  Random Password
//
//  Created by Kássio Vieira da Luz on 29/05/21.
//

import Foundation

class PasswordData: ObservableObject {
    @Published var sliderValue: Double = 4
    @Published var password: String = "cUvwjH0f#4@V"
    @Published var hasNumber: Bool = false
    @Published var hasLetter: Bool = false
    @Published var hasSymbols: Bool = false
}
