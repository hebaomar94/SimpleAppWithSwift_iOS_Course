//
//  TagView.swift
//  My_Tasks
//
//  Created by Heba Omar94 on 06/11/2023.
//

import UIKit

class TagView: UIView {

    @IBOutlet var containerView: UIView!
    @IBOutlet weak var titleLabel: UILabel!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        loadFromNib()
    }
    //design
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        loadFromNib() 
    }
    func setupUI(title: String, color: UIColor) {
        containerView.backgroundColor = color.withAlphaComponent(0.2)
        titleLabel.textColor = color
        titleLabel.text = title

    }
}
