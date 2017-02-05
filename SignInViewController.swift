//
//  SignInViewController.swift
//  Clippr
//
//  Created by tcarpane on 1/22/17.
//  Copyright © 2017 emgottfr. All rights reserved.
//

import UIKit

class SignInViewController: UIViewController, UITextFieldDelegate {
    let model = HTTPS_model()
    
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

    func makeGetCall() {
        // Set up the URL request
        let todoEndpoint: String = "https://628970c7.ngrok.io/api/"
        guard let url = URL(string: todoEndpoint) else {
            print("Error: cannot create URL")
            return
        }
        let urlRequest = URLRequest(url: url)
        
        // set up the session
        let config = URLSessionConfiguration.default
        let session = URLSession(configuration: config)
        
        // make the request
        let task = session.dataTask(with: urlRequest) {
            (data, response, error) in
            // check for any errors
            guard error == nil else {
                print("error calling GET on /todos/1")
                print(error)
                return
            }
            // make sure we got data
            guard let responseData = data else {
                print("Error: did not receive data")
                return
            }
            // parse the result as JSON, since that's what the API provides
            do {
                guard let todo = try JSONSerialization.jsonObject(with: responseData, options: []) as? [String: AnyObject] else {
                    print("error trying to convert data to JSON")
                    return
                }
                // now we have the todo, let's just print it to prove we can access it
                print("The todo is: " + todo.description)
                
                // the todo object is a dictionary
                // so we just access the title using the "title" key
                // so check for a title and print it if we have one
                guard let todoTitle = todo["title"] as? String else {
                    print("Could not get todo title from JSON")
                    return
                }
                print("The title is: " + todoTitle)
            } catch  {
                print("error trying to convert data to JSON")
                return
            }
        }
        
        task.resume()
    }

   

    
    @IBAction func attemptLogin(_ sender: Any) {
        model.makePostCallLogin(username: self.userNameField.text!, password: self.passwordField.text!)
    }
}
