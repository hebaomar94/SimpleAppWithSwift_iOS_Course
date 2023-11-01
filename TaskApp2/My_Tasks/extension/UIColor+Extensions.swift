//
//  UIColor+Extensions.swift
//  My_Tasks
//
//  Created by Heba Omar94 on 31/10/2023.
//


import UIKit

extension UIColor {
    
    convenience init(r red: Int, g green: Int, b blue: Int, a: CGFloat = 1.0) {
        self.init(red: CGFloat(red) / 255.0, green: CGFloat(green) / 255.0, blue: CGFloat(blue) / 255.0, alpha: a)
    }
    
    convenience init(hex: Int, a: CGFloat = 1.0) {
        self.init(r: (hex >> 16) & 0xFF, g: (hex >> 8) & 0xFF, b: hex & 0xFF, a: a)
    }
}
