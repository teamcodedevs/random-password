//
//  UIColor.swift
//  Random Password
//
//  Created by Kássio Vieira da Luz on 29/05/21.
//
import Foundation
import SwiftUI

extension UIColor {
    convenience init(hex: Int) {
        let components = (
            R: CGFloat((hex >> 16) & 0xff) / 255,
            G: CGFloat((hex >> 08) & 0xff) / 255,
            B: CGFloat((hex >> 00) & 0xff) / 255
        )
        self.init(red: components.R, green: components.G, blue: components.B, alpha: 1)
    }
}

extension Color {
    public init(hex: Int) {
        self.init(UIColor(hex: hex))
   }

    public static var primary: Color {
        return Color(hex: 0x167af5)
    }
    
    public static var label: Color {
        return Color(hex: 0x525f83)
    }
    
    public static var background: Color {
        return Color(hex: 0x040f2c)
    }
    
    public static var card: Color{
        return Color(hex:0x091742)
    }
}
