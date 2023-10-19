//
//  ViewController.swift
//  CurrencyApp
//
//  Created by Heba Omar94 on 18/10/2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var enter: UITextField!
    
    @IBOutlet weak var USD_CURRENCY: UILabel!
    
    @IBOutlet weak var CONVERT: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print ("hello world ")
    }

    @IBAction func ACTION_Convert(_ sender: Any) {
//        //to appear num
//        let amount : String = enter.text ?? ""
//        //if its empty
//        if !amount.isEmpty {
//            let usd = (Double (amount) ?? 0.0 ) * 30.8
//
//            //to appear in label
//
//            USD_CURRENCY.text = ("\(usd) USD")
//        }
        
        //inhancement code with Guard
        guard let amount = enter.text,
              !amount.isEmpty else {
            USD_CURRENCY.text = "Enter EGP amount"
            USD_CURRENCY.textColor = .systemOrange

            return
        }
        guard let usd = Double (amount) else {
            USD_CURRENCY.text = "Enter correct EGP"
            USD_CURRENCY.textColor = .systemRed
            return
        }
        let usdConvert = usd * 30.8
        USD_CURRENCY.text = ("\(usdConvert ) USD")
        USD_CURRENCY.textColor = .systemGreen

    }
    
}

