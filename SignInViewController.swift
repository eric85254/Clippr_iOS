//
//  SignInViewController.swift
//  Clippr
//
//  Created by tcarpane on 1/22/17.
//  Copyright © 2017 emgottfr. All rights reserved.
//

import UIKit

class SignInViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var signIn: UIButton!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var userNameField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.passwordField.delegate = self
        self.userNameField.delegate = self

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        self.signIn.layer.borderWidth = 2
        self.signIn.layer.borderColor = UIColor.blue.cgColor
        
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.passwordField.resignFirstResponder()
        self.userNameField.resignFirstResponder()
        return true;
    }
    
     func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    @IBAction func attemptSignIn(_ sender: Any) {
        let username = userNameField.text!
        let password = passwordField.text!
        
        var booleanValue : Bool? = false
        
        // call verifying function to change booleanValue's value
        
        if let booleanValue = booleanValue, booleanValue {
         // if it passes
        }
        else {
            // if it fails
        }
        
        
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
