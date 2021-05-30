//
//  ButtonView.swift
//  Random Password
//
//  Created by Pedro Lobato on 29/05/21.
//

import SwiftUI

struct ButtonView: View {
    @ObservedObject var passwordData: PasswordData
    var body: some View {
        Button(action: passwordData.refreshPressed ){
            Text("Refresh")
                .font(.body)
                .fontWeight(.semibold)
                .textCase(/*@START_MENU_TOKEN@*/.uppercase/*@END_MENU_TOKEN@*/)
                .foregroundColor(.white)
        }
            .padding()
        .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, minHeight: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/)
            .background(LinearGradient(gradient: Gradient(colors: [Color(hex: 0x2a66f0), Color(hex: 0x167af5)]), startPoint: .leading, endPoint: /*@START_MENU_TOKEN@*/.trailing/*@END_MENU_TOKEN@*/))
            .cornerRadius(10)
        
        
    }
}
