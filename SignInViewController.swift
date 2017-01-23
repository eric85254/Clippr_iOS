//
//  SignInViewController.swift
//  Clippr
//
//  Created by tcarpane on 1/22/17.
//  Copyright © 2017 emgottfr. All rights reserved.
//

import UIKit

class SignInViewController: UIViewController {

    @IBOutlet weak var signIn: UIButton!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var userNameField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        self.signIn.layer.borderWidth = 2
        self.signIn.layer.borderColor = UIColor.blue.cgColor
        
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
