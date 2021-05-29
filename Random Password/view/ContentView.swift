//
//  ContentView.swift
//  Random Password
//
//  Created by Kássio Vieira da Luz on 29/05/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(hex: 0x040f2c).ignoresSafeArea()
            VStack{
                PasswordText()
            }.padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
