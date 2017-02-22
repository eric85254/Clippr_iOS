//
//  signUpViewController.swift
//  Clippr
//
//  Created by emgottfr on 1/29/17.
//  Copyright © 2017 emgottfr. All rights reserved.
//

import UIKit

class signUpViewController: UIViewController {

    @IBOutlet weak var phoneNum: UITextField!
    @IBOutlet weak var fName: UITextField!
    @IBOutlet weak var lName: UITextField!
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var isStylist: UISegmentedControl!
    
    @IBOutlet weak var SignUp: UIButton!
    
    let model = HTTPS_model()
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func attemptSignIn(_ sender: UIButton) {
            model.makePostSignUP(firstName: self.fName.text!, lastName: self.lName.text!, email: self.email.text!, phonenumber: self.phoneNum.text!, isStylist: "YES")
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
