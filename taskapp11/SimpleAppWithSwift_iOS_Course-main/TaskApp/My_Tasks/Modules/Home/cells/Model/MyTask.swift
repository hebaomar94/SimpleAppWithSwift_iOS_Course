//
//  MyTask.swift
//  My_Tasks
//
//  Created by Heba Omar94 on 05/11/2023.
//

import UIKit

class MyTask {

    
    var id: String?
    var title: String
    var date: String
    var time: String?
    var tag: MyTaskTag
    
 init(id: String? = nil, title: String,
      date: String,
      time: String? = nil,
      tag: MyTaskTag) {
        self.id = id
        self.title = title
        self.date = date
        self.time = time
        self.tag = tag
    }
}

class MyTaskTag {

    
   var title: String
    var color: UIColor
   var isSelected: Bool
    
 init(title: String, color: UIColor, isSelected: Bool = false) {
        self.title = title
        self.color = color
        self.isSelected = isSelected
    }
}
