//
//  TaskFactory.swift
//  My_Tasks
//
//  Created by Heba Omar94 on 23/11/2023.
//

import Foundation

class TaskFactory {
var tags: [MyTaskTag] 
    init () {
      tags = [
    .init(title: "Workout",
                              color: .init(hex: 0xE55C5C)),
            
     .init(title: "Finance",
                              color: .init(hex: 0x606AE9)),
            
            
     .init(title: "Health",
                              color: .init(hex: 0x53DF61))
        ]
    }

}
