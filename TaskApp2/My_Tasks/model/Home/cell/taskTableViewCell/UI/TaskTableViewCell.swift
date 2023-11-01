//
//  TaskTableViewCell.swift
//  My_Tasks
//
//  Created by Heba Omar94 on 31/10/2023.
//

import UIKit

class TaskTableViewCell: UITableViewCell {

    @IBOutlet private weak var containerView: UIView!
    
    @IBOutlet weak var tiltleLabel: UILabel!
    @IBOutlet private weak var datelabel: UILabel!
    @IBOutlet private weak var tagView: UIView!
    @IBOutlet private weak var taglabel: UILabel!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        print("awake")
        
        containerView.layer.cornerRadius = 16
        containerView.setShadow(
            color: .init(hex: 0x323B47),
            opacity: 0.08,
            offset: .init(width: 1, height: 3))
        tagView.layer.cornerRadius = 12 
        
        //let tagColor = UIColor (r: 96, g: 106, b: 233)
//        let tagColor = UIColor (hex: 0x606AE9)
//
//        tagView.backgroundColor = tagColor.withAlphaComponent(0.2)
//        taglabel.textColor = tagColor
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
        print("selected")

    }
    
}
