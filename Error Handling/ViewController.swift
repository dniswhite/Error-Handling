//
//  ViewController.swift
//  Error Handling
//
//  Created by Dennis White on 10/29/15.
//  Copyright © 2015 dniswhite. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var fieldOneText: UITextField!
    @IBOutlet weak var fieldTwoText: UITextField!
    @IBOutlet weak var fieldThreeText: UITextField!
    @IBOutlet weak var fieldFourText: UITextField!
    
    @IBOutlet weak var errorLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func validateFormPressed(sender: AnyObject) {
        let validator = FormValidationModel(fieldOne: fieldOneText.text!, fieldTwo: fieldTwoText.text!, fieldThree: fieldThreeText.text!, fieldFour: fieldFourText.text!)
        
        do {
            errorLabel.text = ""
            try validator.validateForm()
        } catch let error as FormValidationErrors {
            print(error)
            errorLabel.text = error.description
        } catch {
            errorLabel.text = "There was an error validating your form entry.\n Please try again."
        }
        
        // add code here to save the data or take some action on it
    }
}

