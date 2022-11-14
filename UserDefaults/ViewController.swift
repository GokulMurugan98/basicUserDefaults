//
//  ViewController.swift
//  UserDefaults
//
//  Created by Gokul Murugan on 2022-11-13.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet var textFieldText: UITextField!
    @IBOutlet var textLable:UILabel!
    
    
    var UserDefaultsName = UserDefaults(suiteName: "com.app.")

    override func viewDidLoad() {
        super.viewDidLoad()
        textFieldText.delegate = self
        textLable.text = UserDefaultsName?.string(forKey: "name")
        
    }
    
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        UserDefaultsName?.set(textFieldText.text, forKey: "name")
        textFieldText.text = nil
        textFieldText.resignFirstResponder()
        return true
    }
    

}

