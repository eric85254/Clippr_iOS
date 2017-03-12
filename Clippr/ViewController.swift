//
//  ViewController.swift
//  Clippr
//
//  Created by emgottfr on 1/21/17.
//  Copyright © 2017 emgottfr. All rights reserved.
//

import UIKit
import GoogleMaps
import Alamofire
import Gloss


class ViewController: UIViewController {

    
    
    @IBOutlet weak var clipprLogo: UIImageView!
    
    @IBOutlet weak var debug: UIButton!
    @IBOutlet weak var passwordRecovery: UILabel!
    @IBOutlet weak var signUP: UIButton!
    @IBOutlet weak var signIn: UIButton!
    
    //let test: [Int: (address: String, time: String)] = [0:("a","b")]
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        /*self.signIn.layer.borderWidth = 2
        self.signIn.layer.borderColor = UIColor.blue.cgColor
        self.signUP.layer.borderColor = UIColor.blue.cgColor
        */
        //print(test[1]!.address)
        //print(test[1]!.time)
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
        
        // Dispose of any resources that can be recreated.
    }
    //Move this to model
    //start
    

}

