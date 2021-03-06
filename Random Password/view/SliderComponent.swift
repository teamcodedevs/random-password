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
            Text("LENGTH: \(Int(passwordData.sliderValue))")
                .foregroundColor(Color.label)
                .font(.caption)
                .fontWeight(.semibold)
            VStack(alignment: .leading, spacing: 12){
                HStack{
                    Text("4").foregroundColor(.white)
                    Slider(
                        value: $passwordData.sliderValue,
                        in: 4...40
                    )
                    Text("40").foregroundColor(.white)
                }
            }.padding(.all, 20)
            .background(Color.card)
            .cornerRadius(10.0)
        }.frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
    }
}
