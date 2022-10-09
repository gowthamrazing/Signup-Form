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

        alertView()
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
