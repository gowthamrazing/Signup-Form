//
//  ViewController.swift
//  Signup Form
//
//  Created by Gowtham Kalaiselvan on 9/10/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var userNameTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var confirmPasswordTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }

    @IBAction func SubmitClicked(_ sender: Any) {

        if (userNameTextField.text == nil) || (passwordTextField.text == nil) || (confirmPasswordTextField.text == nil) {
           alertView(titleInput: ERROR_TITLE, messageInput: MISSING_FIELDS)
        } else if userNameTextField.text == "" {
           alertView(titleInput: ERROR_TITLE, messageInput: MISSING_USERNAME)
        }else if passwordTextField.text == "" {
           alertView(titleInput: ERROR_TITLE, messageInput: MISSING_PASSWORD)
        } else if passwordTextField.text != confirmPasswordTextField.text {
            alertView(titleInput: ERROR_TITLE, messageInput: MISMATCHED_PASSWORD)
        } else {
            alertView(titleInput: SUCCESS_TITLE, messageInput: USER_ADDED)
        }
    }
}

extension ViewController {
    func alertView(titleInput: String, messageInput: String) {
        //Title - "Title of the alert box"
        //Message - "Message to be shown in the alert box"
        // UIAlertControllerStyle - "Style of the alert Controller"
        let alert = UIAlertController(title: titleInput, message: messageInput, preferredStyle: UIAlertController.Style.alert)
        
        //Button action to show the ok button in the alert
        let okButton = UIAlertAction(title: "Ok", style: UIAlertAction.Style.default) { (UIAlertAction) in
            print("Ok button Clicked")
        }
        
        // TO add the created button
        alert.addAction(okButton)
        
        // Present the created alert viewcontroller
        self.present(alert, animated: true, completion: nil)
        
    }
}
