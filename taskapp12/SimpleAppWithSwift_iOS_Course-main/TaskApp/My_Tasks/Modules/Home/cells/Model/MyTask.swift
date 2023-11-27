//
//  MyTask.swift
//  My_Tasks
//
//  Created by Heba Omar94 on 05/11/2023.
//

import UIKit

class MyTask {
    
    let id: String
    let title: String
    let descriptionTitle: String
    let date: String
    //let time: String
    let tag: MyTaskTag
    
    init(id: String = "",
         title: String,
         descriptionTitle: String = "",
         date: String,
         //time: String = "",
         tag: MyTaskTag) {
        self.id = id
        self.title = title
        self.descriptionTitle = descriptionTitle
        self.date = date
        //self.time = time
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
