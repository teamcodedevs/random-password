//
//  switchComponent.swift
//  Random Password
//
//  Created by Santander Olé on 29/05/21.
//

import SwiftUI


struct switchComponent: View {
    @State private var show = true
    var body: some View {
        VStack (alignment: .leading, spacing: /*@START_MENU_TOKEN@*/nil/*@END_MENU_TOKEN@*/){
            Text("Settings")
                .padding(10)
            List(){
                VStack{
                    Toggle(isOn: $show) {
                       Text("Include number")
                    }
                }
                VStack {
                    Toggle(isOn: $show) {
                       Text("Include letters")
                    }
                }
                VStack {
                    Toggle(isOn: $show) {
                       Text("Include symbols")
                    }
                }
            }
        }
    }
}

struct switchComponent_Previews: PreviewProvider {
    static var previews: some View {
        switchComponent()
    }
}
