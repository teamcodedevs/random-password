//
//  PasswordText.swift
//  Random Password
//
//  Created by Pedro Lobato on 29/05/21.
//

import SwiftUI

struct PasswordText: View {
    var body: some View {
        VStack {
            Text("Generated Password")
                .font(.caption)
                .fontWeight(.semibold)
                .textCase(/*@START_MENU_TOKEN@*/.uppercase/*@END_MENU_TOKEN@*/)
                .foregroundColor(Color.label)
                .frame(maxWidth: .infinity, alignment: .leading)
            ZStack {
                Text("cUvwjH0f#4@V")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .foregroundColor(.white)
            }
            .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            .padding(.all, 20)
            .foregroundColor(.blue) // TODO: Change color after
            .background(Color.card)
            .cornerRadius(10)
        }
    }
}

struct PasswordText_Previews: PreviewProvider {
    static var previews: some View {
        PasswordText()
    }
}
