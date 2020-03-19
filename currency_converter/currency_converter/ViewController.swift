//
//  ViewController.swift
//  currency_converter
//
//  Created by Pavel on 19/03/2020.
//  Copyright © 2020 Pavel. All rights reserved.
//

import UIKit
import Alamofire

class ViewController: UIViewController {

    @IBOutlet weak var eurTextField: UITextField!
    @IBOutlet weak var rubTextField: UITextField!
    var rub_value: Double = 0.0
    var other_value: Double = 0.0
    var currency: String = "rub"
    var CurrencyPrice: Double = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fetchFilms()
        //print(CurrencyPrice)
    }


    @IBAction func EurEditText(_ sender: Any) {
//        if eurTextField.text?.count != 0 {
//            eurTextField.text = ""
//        }
        if eurTextField.isEditing {
            let convert :Double? = Double(eurTextField.text!)
            rubTextField.text = String(convert! * CurrencyPrice)
        }
    }
    
    @IBAction func RubEditText(_ sender: Any) {
//        if rubTextField.text?.count != 0 {
//            rubTextField.text = ""
//        }
        if rubTextField.isEditing {
            let convert :Double? = Double(rubTextField.text!)
            eurTextField.text = String(convert! / CurrencyPrice)
               }
    }
    
    func fetchFilms() {
      let request = AF.request("https://api.exchangeratesapi.io/latest")
      request.responseJSON {(data) in
        print(data)
      }
    }
}
