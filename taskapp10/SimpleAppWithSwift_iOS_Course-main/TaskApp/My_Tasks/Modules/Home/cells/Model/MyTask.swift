//
//  MyTask.swift
//  My_Tasks
//
//  Created by Heba Omar94 on 05/11/2023.
//

import UIKit

struct MyTask {

    
    let id: String?
    let title: String
    let date: String
    let time: String?
    let tag: MyTaskTag
    
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

struct MyTaskTag {
    let title: String
    let color: UIColor
}
