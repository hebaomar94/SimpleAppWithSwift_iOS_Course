//
//  ViewController.swift
//  My_Tasks
//
//  Created by Heba Omar94 on 21/10/2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var creatAccountButton: UIButton!
    
    
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
        navigateToHome()
    }
    private func navigateToHome() {
        let vc = storyboard? .instantiateViewController(withIdentifier: String(describing: HomeViewController.self)) as? HomeViewController
        
        if let vc {
            vc.modalPresentationStyle = .fullScreen
                present(vc, animated: true)
           
        }

    }
}
