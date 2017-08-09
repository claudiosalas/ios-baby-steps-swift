//
//  ViewController.swift
//  MyFirstApp
//
//  Created by Claudio Salas on 8/2/17.
//  Copyright © 2017 Claudio Salas. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myFirstInputTextField: UITextField!
    
    @IBOutlet weak var welcomeLabel: UILabel!
    
    @IBAction func okButtonTouched(_ sender: UIButton) {
        welcomeLabel.text = "Welcome: \(myFirstInputTextField.text!)"
    }
    
    @IBAction func clearButtonTouched(_ sender: UIButton) {
        welcomeLabel.text = nil
        myFirstInputTextField.text = nil
    }
    
}

