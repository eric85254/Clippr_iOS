//
//  SignInViewController.swift
//  Clippr
//
//  Created by tcarpane on 1/22/17.
//  Copyright © 2017 emgottfr. All rights reserved.
//

import UIKit

class SignInViewController: UIViewController, UITextFieldDelegate {
    
    var name: String = ""
    
    @IBOutlet weak var invalidLogin: UILabel!
    @IBOutlet weak var signIn: UIButton!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var userNameField: UITextField!
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.passwordField.delegate = self
        self.userNameField.delegate = self
        self.invalidLogin.isHidden = true
        
        
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
    
    func goToStylistDash()
    {
        self.invalidLogin.isHidden = true
        ConUsername = self.userNameField.text!
        performSegue(withIdentifier: "toStylistDash", sender: self)
    }
    
    func failedToLogin()
    {
        self.invalidLogin.isHidden = false
    }
    
    func goToClientDash()
    {
        self.invalidLogin.isHidden = true
        ConUsername = self.userNameField.text!
        performSegue(withIdentifier: "toClientDash", sender: self)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

   
    
    @IBAction func attemptLogin(_ sender: Any) {
        
        print("About to make POST call")
        
        //print(model.makePostCallLogin(usernameZ: self.userNameField.text!, passwordZ: self.passwordField.text!))
        model.makePostCallLogin(usernameZ: self.userNameField.text!, passwordZ: self.passwordField.text!, instance: self)
        print("IsLogged in = ")
        
        print (isLoggedIn)
        /*if  isLoggedIn == true
        {
            self.invalidLogin.isHidden = true
            shouldPerformSegue(withIdentifier: "toStylistDash", sender: self)
            ConUsername = self.userNameField.text!
        }
        else
        {
            self.invalidLogin.isHidden = false
        }*/
        
    }
    
    
  
    
}
