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
        cornerRadius()
    }
    
    private func cornerRadius() {
        creatAccountButton.layer.cornerRadius = 25
    }
    
    @IBAction func action(_ sender: UIButton) {
        switch sender.tag {
        case 1:
            print("action:Creat account")
        case 2:
            print("login")
        default:
            print("no way ")
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

//// MARK: - Alert Actions
//extension IntroductionViewController {
//    @IBAction func showAlertButtonTapped(_ sender: UIButton) {
//        let alert = UIAlertController(title: "Notice", message: "Hello", preferredStyle: .alert)
//
//        alert.addAction(UIAlertAction(title: "Remind Me Tomorrow", style: .default, handler: nil))
//        alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
//        alert.addAction(UIAlertAction(title: "Launch the Missile", style: .destructive, handler: nil))
//
//        present(alert, animated: true, completion: nil)
//    }
//}

//// MARK: - Login Action
//extension IntroductionViewController {
//    @IBAction func login(_ sender: Any) {
//        // Add code for handling the login action
//    }
//}

