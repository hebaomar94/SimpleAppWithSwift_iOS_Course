//
//  CreatAccountViewController.swift
//  My_Tasks
//
//  Created by Heba Omar94 on 06/11/2023.
//

import UIKit

class CreatAccountViewController: UIViewController {
    @IBOutlet weak var nameTextField: AppTextField!
    
    @IBOutlet weak var userNameTextField: AppTextField!
    @IBOutlet weak var password: AppTextField!
    init() {
        super.init(nibName: String(describing: Self.self), bundle: Bundle(for: Self.self))
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()

        navigationItem.title = "Creat Account"

    }
    
    @IBAction func actionCreatAccount(_ sender: Any) {
        
        let vc = HomeViewController()
        let nav = UINavigationController(rootViewController: vc)
        RootRouter.presentRootScreen(with: nav)
    }
    
  
    
    
    
    
    
    
    
//    let vc = addTaskViewController(myTask: .init(
//        id:"Task #233",
//        title:"Daily Gym Reminder" ,
//        date: "16Oct 2023",
//        time: "8:00 am",
//        tag: .init(title: "workout", color: .green))
//   
//    )
//    present(vc, animated: true)
//          //presentHome()
//      }

}
