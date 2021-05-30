//
//  switchComponent.swift
//  Random Password
//
//  Created by Santander Olé on 29/05/21.
//

import SwiftUI


struct SwitchComponent: View {
    @ObservedObject var passwordData: PasswordData
    var body: some View {
        VStack (alignment: .leading, spacing: nil){
            Text("Settings")
                .font(.caption)
                .fontWeight(.semibold)
                .textCase(/*@START_MENU_TOKEN@*/.uppercase/*@END_MENU_TOKEN@*/)
                .foregroundColor(Color.label)
                .frame(maxWidth: .infinity, alignment: .leading)
            
                VStack (alignment: .leading, spacing: 30){
                    Toggle(isOn: $passwordData.hasNumber) {
                        Text("Include number")
                            .foregroundColor(.white)
                    }
                    .toggleStyle(SwitchToggleStyle(tint: Color.primary))
                    
                }.padding(15)
                .background(Color.card)
                .cornerRadius(10.0)
                VStack (alignment: .leading, spacing: 30){
                    Toggle(isOn: $passwordData.hasLetter) {
                        Text("Include letters")
                            .foregroundColor(.white)
                    }
                    .toggleStyle(SwitchToggleStyle(tint: Color.primary))
                    
                }.padding(15)
                .background(Color.card)
                .cornerRadius(10.0)
                VStack (alignment: .leading, spacing: 30){
                    Toggle(isOn: $passwordData.hasSymbols) {
                        Text("Include symbols")
                            .foregroundColor(.white)
                    }
                    .toggleStyle(SwitchToggleStyle(tint: Color.primary))
    
                }.padding(15)
                .background(Color.card)
                .cornerRadius(10.0)
        }
    }
}
