//
//  UIView+extension.swift
//  My_Tasks
//
//  Created by Heba Omar94 on 23/10/2023.
//

import UIKit
extension UIView {
    //for radius
    func cornerRadus(_ radius: CGFloat) {
       self.layer.cornerRadius = radius
    }
    func setShadow(color: UIColor,
                   opacity: Float = 0.1,
                   offset: CGSize) {
        self.layer.shadowColor = color.cgColor
        self.layer.shadowOpacity = opacity
        self.layer.shadowOffset = offset
    }
}

