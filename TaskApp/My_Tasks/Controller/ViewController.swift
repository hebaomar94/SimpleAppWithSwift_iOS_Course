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
    
    
}
