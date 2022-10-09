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
            let alert = UIAlertController(title: "Error", message: "Please Enter All fields", preferredStyle: UIAlertController.Style.alert)
            let okButton = UIAlertAction(title: "Ok", style: UIAlertAction.Style.default, handler: nil)
            alert.addAction(okButton)
            self.present(alert, animated: true, completion: nil)
        } else if userNameTextField.text == "" {
            let alert = UIAlertController(title: "Error", message: "Please Enter Username", preferredStyle: UIAlertController.Style.alert)
            let okButton = UIAlertAction(title: "Ok", style: UIAlertAction.Style.default, handler: nil)
            alert.addAction(okButton)
            self.present(alert, animated: true, completion: nil)
        }else if passwordTextField.text == "" {
            let alert = UIAlertController(title: "Error", message: "Please Enter Password", preferredStyle: UIAlertController.Style.alert)
            let okButton = UIAlertAction(title: "Ok", style: UIAlertAction.Style.default, handler: nil)
            alert.addAction(okButton)
            self.present(alert, animated: true, completion: nil)
        } else if passwordTextField.text != confirmPasswordTextField.text {
            let alert = UIAlertController(title: "Error", message: "Passwords Mismatched", preferredStyle: UIAlertController.Style.alert)
            let okButton = UIAlertAction(title: "Ok", style: UIAlertAction.Style.default, handler: nil)
            alert.addAction(okButton)
            self.present(alert, animated: true, completion: nil)
        } else {
            let alert = UIAlertController(title: "Error", message: "User is logged In", preferredStyle: UIAlertController.Style.alert)
            let okButton = UIAlertAction(title: "Ok", style: UIAlertAction.Style.default, handler: nil)
            alert.addAction(okButton)
            self.present(alert, animated: true, completion: nil)
        }
        //alertView()
    }
}

extension ViewController {
    func alertView() {
        //Title - "Title of the alert box"
        //Message - "Message to be shown in the alert box"
        // UIAlertControllerStyle - "Style of the alert Controller"
        let alert = UIAlertController(title: "Error", message: "Please Enter all Fields", preferredStyle: UIAlertController.Style.alert)
        
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
