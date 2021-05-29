//
//  Slider.swift
//  Random Password
//
//  Created by Kássio Vieira da Luz on 29/05/21.
//

import SwiftUI

struct SliderComponent: View {
    @ObservedObject var passwordData: PasswordData
    
    var body: some View {
        VStack(alignment: .leading){
            Text("LENGTH \(Int(passwordData.sliderValue))")
                .foregroundColor(Color(hex: 0x525f83))
            VStack(alignment: .leading, spacing: 12){
                HStack{
                    Text("4").foregroundColor(Color(hex: 0x525f83))
                    Slider(
                        value: $passwordData.sliderValue,
                        in: 4...40
                    )
                    Text("40").foregroundColor(Color(hex: 0x525f83))
                }
            }.padding(15)
            .background(Color(hex: 0x040f2c))
            .cornerRadius(10.0)
        }.padding()
    }
}
