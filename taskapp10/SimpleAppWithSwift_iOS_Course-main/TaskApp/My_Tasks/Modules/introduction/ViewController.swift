//
//  ViewController.swift
//  My_Tasks
//
//  Created by Heba Omar94 on 21/10/2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var creatAccountButton: UIButton!
    
    
    init() {
        super.init(nibName: String(describing: Self.self), bundle: Bundle(for: Self.self))
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        cornerRadus()
    }
    private func cornerRadus() {
        creatAccountButton .layer.cornerRadius = 25
    }
    
    
    @IBAction func action(_ sender: UIButton) {
        switch sender.tag {
        case 1:
            print("action")
            
        case 2:
            print("login")
            
        default :
            break
        }
        presentHome()
    }
    private func presentHome() {
      let vc =   HomeViewController()
        RootRouter.presentRootScreen(vc: vc)
 

    }
}
