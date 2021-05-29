//
//  Slider.swift
//  Random Password
//
//  Created by Kássio Vieira da Luz on 29/05/21.
//

import SwiftUI

struct SliderComponent: View {
    @State private var sliderValue: Double = 4
    @State private var isEditing = false
    
    var body: some View {
        VStack(alignment: .leading){
            Text("LENGTH \(sliderValue)").foregroundColor(Color(hex: 0x525f83))
            VStack(alignment: .leading, spacing: 12){
                Slider(
                    value: $sliderValue,
                    in: 4...100
                )
            }
            .padding()
            .background(Color(hex: 0x040f2c))
        }
    }
}

struct Slider_Previews: PreviewProvider {
    static var previews: some View {
        SliderComponent()
    }
}
