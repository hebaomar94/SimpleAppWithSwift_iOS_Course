//
//  splichViewController.swift
//  My_Tasks
//
//  Created by Heba Omar94 on 21/10/2023.
//

import UIKit

class splichViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        DispatchQueue.main.asyncAfter(deadline: .now() + 3 ) {
            
            self.navigateToView()
        }
    }
    private func navigateToView () {
        let vc = storyboard? .instantiateViewController(withIdentifier: String(describing: ViewController.self)) as? ViewController
        
        if let vc {
            vc.modalPresentationStyle = .fullScreen
                present(vc, animated: true)
           
        }

    }
}
